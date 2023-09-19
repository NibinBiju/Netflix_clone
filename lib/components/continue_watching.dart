import 'package:flutter/material.dart';
import 'package:netflix_clone/components/head_text.dart';
import 'package:netflix_clone/utils/image_constants.dart';

class ContinueWatchingTile extends StatelessWidget {
  const ContinueWatchingTile({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              HeadText(
                htext: text,
                fontsize: 20.92,
              ),
            ],
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(53)),
                width: 103,
                height: 177,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      MoiveImageConst.movie,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Container(
                        width: 103,
                        height: 37,
                        color: const Color(0xFF121212),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(ImageConstant.infoIcon),
                            const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
