import 'package:flutter/material.dart';
import 'package:netflix_clone/db/db_models/db_models.dart';
import 'package:netflix_clone/utils/colors.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/home/subtext.dart';
import 'package:netflix_clone/view/profile_page/add_button.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primaryColor,
        body: Column(
          children: [
            SizedBox(
              height: 160,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 20,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: NetflixImageConst.image.length + 1,
                itemBuilder: (context, index) {
                  if (NetflixImageConst.image.length == index) {
                    return const AddButton();
                  }
                  return ProfileCard(
                      profileModel: NetflixImageConst.image[index]);
                },
              ),
            )
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
          width: 120,
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
