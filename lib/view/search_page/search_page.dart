import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colors.dart';
import 'package:netflix_clone/view/home/head_text.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.primaryColor,
        toolbarHeight: 18,
      ),
      backgroundColor: ColorConstant.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 70,
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 83, 83, 83),
            child: const TextField(
              cursorHeight: 27,
              cursorColor: Colors.black,
              style: TextStyle(
                fontSize: 18,
              ),
              decoration: InputDecoration(
                hintText: 'Search for a movie, show, genre, e.t.c',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                ),
                prefixIconColor: Colors.grey,
                suffixIcon: Icon(
                  Icons.mic,
                  size: 30,
                ),
                suffixIconColor: Colors.grey,
              ),
            ),
          ),

          //top searches
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    HeadText(htext: 'Top Searches', fontsize: 26),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
