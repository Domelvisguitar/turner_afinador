import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audiofft/audiofft.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(AfinadorApp());
}

class AfinadorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Afinador',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AfinadorPage(),
    );
  }
}

class AfinadorPage extends StatefulWidget {
  @override
  _AfinadorPageState createState() => _AfinadorPageState();
}

class _AfinadorPageState extends State<AfinadorPage> {
  double _frequency = 0.0; // Frequência detectada
  String _note = ''; // Nota musical detectada

  AudioFft _audioFft = AudioFft();
  bool _isListening = false;

  @override
  void initState() {
    super.initState();
    _initAudio();
  }

  Future<void> _initAudio() async {
    try {
      await _audioFft.start();
      _audioFft.onFrequencyChanged.listen((double freq) {
        setState(() {
          _frequency = freq;
          _note = _getNoteFromFrequency(freq);
        });
      });
    } on PlatformException catch (e) {
      print("Error: $e");
    }
  }

  String _getNoteFromFrequency(double freq) {
    const Map<String, double> standardFrequencies = {
      'C': 261.63,
      'D': 293.66,
      'E': 329.63,
      'F': 349.23,
      'G': 392.00,
      'A': 440.00,
      'B': 493.88,
    };

    double minDistance = double.infinity;
    String closestNote = '';

    standardFrequencies.forEach((note, standardFreq) {
      double distance = (freq - standardFreq).abs();
      if (distance < minDistance) {
        minDistance = distance;
        closestNote = note;
      }
    });

    return closestNote;
  }

  @override
  void dispose() {
    _audioFft.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Afinador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Frequência: ${_frequency.toStringAsFixed(1)} Hz',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              'Nota: $_note',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_isListening) {
                  _audioFft.stop();
                  setState(() {
                    _isListening = false;
                  });
                } else {
                  _audioFft.start();
                  setState(() {
                    _isListening = true;
                  });
                }
              },
              child: Text(_isListening ? 'Parar' : 'Iniciar'),
            ),
          ],
        ),
      ),
    );
  }
}
