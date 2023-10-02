import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/home/head_text.dart';
import 'package:netflix_clone/view/search_page/search_data.dart';

class TopSearchFilmsCard extends StatelessWidget {
  const TopSearchFilmsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: HeadText(htext: 'Top Searches', fontsize: 26),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: NetflixImageConst.topSearch.length,
              itemBuilder: (context, index) {
                return TopFilmTile(
                  topSearchModel: NetflixImageConst.topSearch[index],
                );
              }),
        )
      ],
    );
  }
}

class TopFilmTile extends StatelessWidget {
  const TopFilmTile({
    super.key,
    required this.topSearchModel,
  });

  final TopSearchModel topSearchModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7),
      child: Container(
        width: 376,
        height: 100,
        color: const Color.fromARGB(255, 85, 84, 84),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 170,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(topSearchModel.imagepath),
                          fit: BoxFit.fill)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    topSearchModel.filmName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.play_circle_outline_outlined,
                color: Colors.white,
                size: 29,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
