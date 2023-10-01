import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/home/subtext.dart';
import 'package:netflix_clone/view/my_list_page/my_list.dart';

class ListPlayIInfo extends StatelessWidget {
  const ListPlayIInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return MyList();
              },
            ));
          },
          child: Column(
            children: [
              Image.asset(ImageConstant.addIcon),
              const SizedBox(
                height: 4,
              ),
              const SubText(text: 'My List'),
            ],
          ),
        ),
        const SizedBox(
          width: 53,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFC4C4C4),
            ),
            onPressed: () {},
            child: const Row(
              children: [
                SizedBox(
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'play',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ],
            )),
        const SizedBox(
          width: 53,
        ),
        const Column(
          children: [
            Icon(
              Icons.info,
              color: Colors.white,
            ),
            SizedBox(
              height: 4,
            ),
            SubText(text: 'info'),
          ],
        )
      ],
    );
  }
}
