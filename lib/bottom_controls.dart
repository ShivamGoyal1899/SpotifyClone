import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fluttery_audio/fluttery_audio.dart';

class BottomControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Material(
        color: Colors.transparent,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.shuffle,
                    color: Colors.white54,
                  ),
                  Expanded(child: Container()),
                  PreviousButton(),
                  Expanded(child: Container()),
                  PlayPauseButton(),
                  Expanded(child: Container()),
                  NextButton(),
                  Expanded(child: Container()),
                  Icon(
                    Icons.repeat,
                    color: Colors.white54,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PlayPauseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AudioComponent(
      updateMe: [
        WatchableAudioProperties.audioPlayerState,
      ],
      playerBuilder: (BuildContext context, AudioPlayer player, Widget child) {
        IconData icon = Icons.play_arrow;
        Color buttonColor = Colors.white54;
        Function onPressed;

        if (player.state == AudioPlayerState.playing) {
          icon = Icons.pause;
          onPressed = player.pause;
          buttonColor = Colors.white;
        } else if (player.state == AudioPlayerState.paused ||
            player.state == AudioPlayerState.completed) {
          icon = Icons.play_arrow;
          onPressed = player.play;
          buttonColor = Colors.white;
        }

        return RawMaterialButton(
          shape: CircleBorder(),
          fillColor: buttonColor,
          elevation: 2.0,
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              icon,
              color: Colors.grey[900],
              size: 35.0,
            ),
          ),
        );
      },
    );
  }
}

class PreviousButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AudioPlaylistComponent(
      playlistBuilder: (BuildContext context, Playlist playlist, Widget child) {
        return IconButton(
          splashColor: Colors.transparent,
          icon: Icon(
            Icons.skip_previous,
            color: Colors.white54,
            size: 35.0,
          ),
          onPressed: playlist.previous,
        );
      },
    );
  }
}

class NextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AudioPlaylistComponent(
      playlistBuilder: (BuildContext context, Playlist playlist, Widget child) {
        return IconButton(
          splashColor: Colors.transparent,
          icon: Icon(
            Icons.skip_next,
            color: Colors.white54,
            size: 35.0,
          ),
          onPressed: playlist.next,
        );
      },
    );
  }
}

class CircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: min(size.width, size.height) / 2,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
