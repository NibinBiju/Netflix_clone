import 'package:flutter/material.dart';
import 'package:netflix_clone/db/db_models/db_videos.dart';
import 'package:netflix_clone/utils/colors.dart';
import 'package:netflix_clone/view/coming_soon/video_tile.dart';

class ComingSoon extends StatelessWidget {
  ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    List videoList = [
      Videos(
        videoId: 'KVu3gS7iJu4',
      ),
      Videos(
        videoId: 'uhjJ5brX-bY',
      ),
      Videos(
        videoId: 'FV3bqvOHRQo',
      ),
      Videos(
        videoId: '6ura9bYCDJg',
      ),
      Videos(
        videoId: 'mg60V08cv6Q',
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: ColorConstant.primaryColor,
      ),
      body: ListView.separated(
        itemCount: videoList.length,
        itemBuilder: (context, index) {
          return YoutubeTile(
            videos: videoList[index],
          );
        },
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}
