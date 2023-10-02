import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/view/home/continue_watching.dart';
import 'package:netflix_clone/view/home/movie_list_tile.dart';
import 'package:netflix_clone/view/home/preview.dart';
import 'package:netflix_clone/view/home/custom_text_app_bar.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/utils/list_paly_info.dart';
import 'package:netflix_clone/view/home/tapbar.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.profileName});

  final String profileName;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                  items: List.generate(
                    NetflixImageConst.carousalImages.length,
                    (index) => Container(
                      height: 460,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  NetflixImageConst.carousalImages[index]),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  options: CarouselOptions(
                    viewportFraction: 1,
                    aspectRatio: 1,
                    height: 450,
                    animateToClosest: true,
                    autoPlay: true,
                  )),
              const Column(
                children: [
                  TapBarNetflix(),
                  SizedBox(
                    height: 280,
                  ),
                  SizedBox(
                    width: 136,
                    height: 20,
                    child: CustomTapBar(text: '#2 Nigeria today'),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            //list ,play ,info
            child: ListPlayIInfo(),
          ),
          const SizedBox(
            height: 43,
          ),
          //preview
          const Previews(htext: 'Previews'),

          //continue watching
          ContinueWatchingTile(
            text: 'Contine watching for $profileName',
          ),

          //popular on netflix
          MovieListTile(
              text: 'Popular on Netflix',
              image: NetflixImageConst.popularMovie),

          //trending now
          MovieListTile(
            text: 'Trending Now',
            image: NetflixImageConst.trendingMovie,
          ),

          //top in country
          MovieListTile(
              text: 'Top 10 in Nigeria Today',
              image: NetflixImageConst.popuInCountry),

          //My list
          MovieListTile(
              text: 'My List', image: NetflixImageConst.popuInCountry),

          //country movies
          MovieListTile(
              text: 'African Movies', image: NetflixImageConst.popuInCountry),

          //Nollywood movies & tv
          MovieListTile(
              text: 'Nollywood Movies & TV',
              image: NetflixImageConst.popuInCountry),
        ],
      ),
    );
  }
}
