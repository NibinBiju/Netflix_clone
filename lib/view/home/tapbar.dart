import 'package:flutter/material.dart';
import 'package:netflix_clone/view/home/custom_text_app_bar.dart';
import 'package:netflix_clone/utils/image_constants.dart';

class TapBarNetflix extends StatelessWidget {
  const TapBarNetflix({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 47),
      child: SizedBox(
        height: 60,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 57,
                  width: 53,
                  child: Image.asset(
                    ImageConstant.mainLogoIcon,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const CustomTapBar(
                  text: 'TV Shows',
                ),
                const SizedBox(
                  width: 30,
                ),
                const CustomTapBar(text: 'Movies'),
                const SizedBox(
                  width: 30,
                ),
                const CustomTapBar(text: 'My List')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
