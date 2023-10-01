import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/db/db_models/db_models.dart';
import 'package:netflix_clone/utils/colors.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/home/head_text.dart';
import 'package:netflix_clone/view/home/subtext.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primaryColor,
        body: Column(
          children: [
            SizedBox(
              height: 140,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 20,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: NetflixImageConst.image.length + 1,
                itemBuilder: (context, index) {
                  if (NetflixImageConst.image.length == index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Column(
                        children: [
                          Container(
                            width: 95,
                            height: 90,
                            decoration: BoxDecoration(
                                border: Border.all(
                              width: 2,
                              color: Colors.grey,
                            )),
                            child: Center(
                              child: Image.asset(
                                'assets/images/ant-design_plus-outlined (2).png',
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return InkWell(
                    child: ProfileCard(
                        profileModel: NetflixImageConst.image[index]),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 20,
                      )),
                  const HeadText(
                    htext: 'Manage Profile',
                    fontsize: 20,
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 290,
              color: const Color.fromRGBO(26, 26, 26, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.message_outlined,
                          color: Colors.white,
                          size: 27,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        HeadText(
                          htext: 'Tell friends about Netflix',
                          fontsize: 23,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Row(
                      children: [
                        CupertinoButton(
                            child: const Text(
                              'Terms & Conditions',
                              style: TextStyle(
                                color: Color.fromRGBO(196, 196, 196, 1),
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: () {}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 39,
                          width: 270,
                          color: Colors.black,
                          child: const TextField(
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                            cursorHeight: 20,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 37,
                          width: 110,
                          color: Colors.grey[300],
                          child: const Center(
                              child: Text(
                            'Copy Link',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(44, 183, 66, 1),
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Image.asset(ImageConstant.whatsApp),
                          ),
                          const SizedBox(
                            height: 60,
                            child: VerticalDivider(
                              color: Colors.white,
                              width: 56,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: const Color.fromRGBO(57, 81, 133, 1),
                            ),
                            child: Image.asset(ImageConstant.facebook),
                          ),
                          const SizedBox(
                            height: 60,
                            child: VerticalDivider(
                              color: Colors.white,
                              width: 56,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Image.asset(ImageConstant.gmail),
                          ),
                          const SizedBox(
                            height: 60,
                            child: VerticalDivider(
                              color: Colors.white,
                              width: 56,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                  size: 32,
                                ),
                                Text(
                                  'More',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset('assets/images/noto-v1_check-mark-button.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  const HeadText(htext: 'My List', fontsize: 19)
                ],
              ),
            ),
            const Divider(
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      HeadText(htext: 'App Settings', fontsize: 18),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  InkWell(
                      onTap: () {
                        print('account');
                      },
                      child: HeadText(htext: 'Account', fontsize: 18)),
                  SizedBox(
                    height: 13,
                  ),
                  HeadText(htext: 'Help', fontsize: 18),
                  SizedBox(
                    height: 13,
                  ),
                  HeadText(htext: 'Sign Out', fontsize: 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.profileModel,
  });
  final ProfileModel profileModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 110,
          height: 100,
          child: Image.asset(
            profileModel.profileImage,
          ),
        ),
        SubText(text: profileModel.name)
      ],
    );
  }
}
