import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/api_controller.dart';
import 'package:netflix_clone/model/api_model/api_model.dart';
import 'package:netflix_clone/view/home/head_text.dart';

class MovieListTile extends StatefulWidget {
  const MovieListTile({
    super.key,
    required this.text,
    required this.image,
  });

  final String text;
  final String image;

  @override
  State<MovieListTile> createState() => _MovieListTileState();
}

class _MovieListTileState extends State<MovieListTile> {
  ApiController? apiController;
  MovieModel? model;

  @override
  Widget build(BuildContext context) {
    apiController?.fetchPopualrData();

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
                  htext: widget.text,
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
                      Image.network(model?.results?[index].posterPath ?? ""),
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
