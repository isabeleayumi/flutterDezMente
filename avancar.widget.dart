import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

// ignore: must_be_immutable
class Avancar extends StatelessWidget {
  var labelPage = "";

  Avancar({
    @required this.labelPage,
  });
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(
          60,
        ),
      ),
      child: FlatButton(
        child: Text("AVANÇAR",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        onPressed: () {
          Navigator.pushNamed(context, labelPage);
          player.play('audio/zuno-2.mp3');
        },
      ),
    );
  }
}
