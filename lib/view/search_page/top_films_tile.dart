import 'package:flutter/material.dart';
import 'package:netflix_clone/view/home/head_text.dart';

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
              itemCount: 10,
              itemBuilder: (context, index) {
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
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Rectangle 21.png'),
                                      fit: BoxFit.fill)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Citation',
                                style: TextStyle(
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
              }),
        )
      ],
    );
  }
}
