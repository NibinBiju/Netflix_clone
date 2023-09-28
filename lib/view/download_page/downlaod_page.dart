import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colors.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Smart Downloads',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 13,
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 130),
            child: Text(
              'Introducing Downloads For You',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Lorem ipsum dolor sit amet, conincididunt ut labore et dolore magna us aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CircleAvatar(
            radius: 110,
            backgroundColor: Colors.grey,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'SETUP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w300,
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
