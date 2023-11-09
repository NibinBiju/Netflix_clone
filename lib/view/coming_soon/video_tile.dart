import 'package:flutter/material.dart';
import 'package:netflix_clone/model/db_models/db_videos.dart';
import 'package:netflix_clone/view/home/head_text.dart';
import 'package:share_plus/share_plus.dart';
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
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                ),
                HeadText(htext: 'Notification', fontsize: 13),
              ],
            ),
            SizedBox(
              width: 50,
            ),
            InkWell(
              onTap: () {
                Share.share('hello');
                print('hi');
              },
              child: Column(
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 30,
                  ),
                  HeadText(htext: 'Share', fontsize: 13),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
