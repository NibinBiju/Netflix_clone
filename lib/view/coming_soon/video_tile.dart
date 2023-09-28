import 'package:flutter/material.dart';
import 'package:netflix_clone/db/db_models/db_videos.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeTile extends StatelessWidget {
  const YoutubeTile({
    super.key,
    required this.videos,
  });

  final Videos videos;

  @override
  Widget build(BuildContext context) {
    final YoutubePlayerController youtubeplayercountroller =
        YoutubePlayerController(
      initialVideoId: videos.videoId,
      flags: const YoutubePlayerFlags(
        captionLanguage: 'en',
        enableCaption: true,
        autoPlay: false,
        mute: true,
      ),
    );

    return Column(
      children: [
        SizedBox(
          child: YoutubePlayer(
            bottomActions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              )
            ],
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
          ),
        ),
        ListTile(
          trailing: Icon(
            Icons.share,
            color: Colors.white,
            size: 23,
          ),
        )
      ],
    );
  }
}
