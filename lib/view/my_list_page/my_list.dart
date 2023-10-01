import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colors.dart';
import 'package:netflix_clone/utils/image_constants.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  ImageConstant.mainLogoIcon,
                ),
                const SizedBox(
                  width: 28,
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: const [],
                    onChanged: (value) {},
                    hint: const Text(
                      'My List',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
