import 'package:flutter/material.dart';
import 'package:netflix_clone/view/home/head_text.dart';
import 'package:netflix_clone/utils/image_constants.dart';

class Previews extends StatelessWidget {
  const Previews({super.key, required this.htext});

  final String htext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            HeadText(htext: htext, fontsize: 26),
          ],
        ),
        SizedBox(
          height: 110,
          child: ListView.builder(
            itemCount: PreviewImage.image1.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 52,
                child: Image.asset(
                  PreviewImage.image1[index],
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
