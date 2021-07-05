import 'dart:math';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class ControlButtons extends StatelessWidget {
  final AudioPlayer player;

  ControlButtons(this.player);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      // margin: EdgeInsets.only(left: 80,right: 80),
      decoration: BoxDecoration(
        color: Colors.black54,
          // color: Colors.yellow,
          // borderRadius: BorderRadius.circular(20)
          ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StreamBuilder<SequenceState>(
              stream: player.sequenceStateStream,
              builder: (context, snapshot) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.green,
                ),
                child: IconButton(
                  icon: Icon(Icons.skip_previous, color: Colors.white),
                  onPressed: player.hasPrevious ? player.seekToPrevious : null,
                ),
              ),
            ),
            StreamBuilder<PlayerState>(
              stream: player.playerStateStream,
              builder: (context, snapshot) {
                final playerState = snapshot.data;
                final processingState = playerState?.processingState;
                final playing = playerState?.playing;
                if (processingState == ProcessingState.loading ||
                    processingState == ProcessingState.buffering) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    width: 64.0,
                    height: 64.0,
                    child: CircularProgressIndicator(),
                  );
                } else if (playing != true) {
                  return IconButton(
                    icon: Icon(Icons.play_arrow, color: Colors.green),
                    iconSize: 64.0,
                    onPressed: player.play,
                  );
                } else if (processingState != ProcessingState.completed) {
                  return IconButton(
                    icon: Icon(Icons.pause, color: Colors.white),
                    iconSize: 64.0,
                    onPressed: player.pause,
                  );
                } else {
                  return IconButton(
                    icon: Icon(Icons.replay, color: Colors.white),
                    iconSize: 64.0,
                    onPressed: () => player.seek(Duration.zero, index: 0),
                  );
                }
              },
            ),
            StreamBuilder<SequenceState>(
              stream: player.sequenceStateStream,
              builder: (context, snapshot) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.green,
                ),
                child: IconButton(
                  icon: Icon(Icons.skip_next, color: Colors.white),
                  onPressed: player.hasNext ? player.seekToNext : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeekBar extends StatefulWidget {
  final Duration duration;
  final Duration position;
  final ValueChanged<Duration> onChanged;
  final ValueChanged<Duration> onChangeEnd;

  SeekBar({
    @required this.duration,
    @required this.position,
    this.onChanged,
    this.onChangeEnd,
  });

  @override
  _SeekBarState createState() => _SeekBarState();
}

class _SeekBarState extends State<SeekBar> {
  double _dragValue;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Directionality(
          textDirection: TextDirection.ltr,
          child: Slider(
            activeColor: Colors.black,
            inactiveColor: Colors.white,
            min: 0.0,
            max: widget.duration.inMilliseconds.toDouble(),
            value: min(_dragValue ?? widget.position.inMilliseconds.toDouble(),
                widget.duration.inMilliseconds.toDouble()),
            onChanged: (value) {
              setState(() {
                _dragValue = value;
              });
              if (widget.onChanged != null) {
                widget.onChanged(Duration(milliseconds: value.round()));
              }
            },
            onChangeEnd: (value) {
              if (widget.onChangeEnd != null) {
                widget.onChangeEnd(Duration(milliseconds: value.round()));
              }
              _dragValue = null;
            },
          ),
        ),
        Positioned(
          right: 16.0,
          bottom: 0.0,
          child: Text(
              RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                      .firstMatch("$_remaining")
                      ?.group(1) ??
                  '$_remaining',
              style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  Duration get _remaining => widget.duration - widget.position;
}

// ignore: unused_element
_showSliderDialog({
  BuildContext context,
  String title,
  int divisions,
  double min,
  double max,
  String valueSuffix = '',
  Stream<double> stream,
  ValueChanged<double> onChanged,
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title, textAlign: TextAlign.center),
      content: StreamBuilder<double>(
        stream: stream,
        builder: (context, snapshot) => Container(
          height: 100.0,
          child: Column(
            children: [
              Text('${snapshot.data?.toStringAsFixed(1)}$valueSuffix',
                  style: TextStyle(
                      fontFamily: 'Fixed',
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0)),
              Slider(
                divisions: divisions,
                min: min,
                max: max,
                value: snapshot.data ?? 1.0,
                onChanged: onChanged,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class AudioMetadata {
  final String album;
  final String title;
  //final String artwork;

  AudioMetadata({
    this.album,
    this.title,
  });
}
