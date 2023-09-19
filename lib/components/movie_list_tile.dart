import 'package:flutter/material.dart';
import 'package:netflix_clone/components/head_text.dart';

class MovieListTile extends StatelessWidget {
  const MovieListTile({
    super.key,
    required this.text,
    required this.image,
  });

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: HeadText(
                  htext: text,
                  fontsize: 20.92,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(53)),
                  width: 103,
                  height: 177,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(
                        image,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
