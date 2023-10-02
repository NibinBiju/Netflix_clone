import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colors.dart';
import 'package:netflix_clone/utils/image_constants.dart';

class MyList extends StatelessWidget {
  MyList({super.key});

  final List<String> myListFilms = [
    'assets/images/Rectangle 11 (1).png',
    'assets/images/Rectangle 16 (3).png',
    'assets/images/Rectangle 12.png',
    'assets/images/Rectangle 13 (1).png',
    'assets/images/Rectangle 16 (1).png',
    'assets/images/Rectangle 16.png',
    'assets/images/Rectangle 15 (2).png',
    'assets/images/fast.png',
    'assets/images/Rectangle 16 (2).png',
    'assets/images/Rectangle 16 (3).png',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double iteamHeigth = (size.height - kToolbarHeight - 24) / 2;
    final double iteamWidth = size.width / 2;
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
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: (iteamWidth / iteamHeigth),
                // controller: new ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: myListFilms.map((String value) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SizedBox(
                      width: 110,
                      height: 161,
                      child: Image.asset(
                        value,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
