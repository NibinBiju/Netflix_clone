import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ComingSoon extends StatefulWidget {
  ComingSoon({super.key});

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  late YoutubePlayerController youtubeplayercountroller;

  @override
  void initState() {
    youtubeplayercountroller = YoutubePlayerController(
      initialVideoId: 'BBAyRBTfsOU',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: youtubeplayercountroller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.red,
      progressColors: const ProgressBarColors(
        playedColor: Colors.red,
        handleColor: Colors.red,
      ),
      onReady: () {
        youtubeplayercountroller.addListener(() {});
      },
    );
  }
}
