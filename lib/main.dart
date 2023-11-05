import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudioPlayerUI(),
    );
  }
}

class AudioPlayerUI extends StatefulWidget {
  @override
  _AudioPlayerUIState createState() => _AudioPlayerUIState();
}

class _AudioPlayerUIState extends State<AudioPlayerUI> {
  bool isPlaying = false;

  void playAudio() {
    // Implement play functionality here
    setState(() {
      isPlaying = true;
    });
  }

  void stopAudio() {
    // Implement stop functionality here
    setState(() {
      isPlaying = false;
    });
  }

  void playNextSong() {
    // Implement forward functionality here
  }

  void playPreviousSong() {
    // Implement backward functionality here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Audio Player'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.skip_previous, color: Colors.white),
                    iconSize: 48,
                    onPressed: playPreviousSong,
                  ),
                  IconButton(
                    icon: isPlaying
                        ? Icon(Icons.pause, color: Colors.white)
                        : Icon(Icons.play_arrow, color: Colors.white),
                    iconSize: 64,
                    onPressed: () {
                      if (isPlaying) {
                        stopAudio();
                      } else {
                        playAudio();
                      }
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.skip_next, color: Colors.white),
                    iconSize: 48,
                    onPressed: playNextSong,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
