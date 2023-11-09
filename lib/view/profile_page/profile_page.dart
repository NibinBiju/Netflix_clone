import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/api_controller.dart';
import 'package:netflix_clone/model/db_models/db_models.dart';
import 'package:netflix_clone/view/profile_page/add_button.dart';
import 'package:netflix_clone/view/home/bottom_navi.dart';
import 'package:netflix_clone/view/home/subtext.dart';
import 'package:netflix_clone/utils/colors.dart';
import 'package:netflix_clone/utils/image_constants.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 137,
                    height: 37.08,
                    child: Image.asset(ImageConstant.mainLogo),
                  ),
                  const SizedBox(
                    width: 91,
                  ),
                  const SizedBox(
                    height: 24,
                    width: 24,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 180),
                itemCount: NetflixImageConst.image.length + 1,
                itemBuilder: (context, index) {
                  if (index == NetflixImageConst.image.length) {
                    return const AddButton();
                  } else {
                    //profile tile
                    return ProfileTile(
                      profileModel: NetflixImageConst.image[index],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.profileModel,
  });

  final ProfileModel profileModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return BottomNaviBar();
          },
        ));
      },
      child: SizedBox(
        width: 100,
        height: 121,
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 92,
              child: Image.asset(
                profileModel.profileImage,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              child: Center(child: SubText(text: profileModel.name)),
            ),
            const SizedBox(
              height: 23,
            ),
          ],
        ),
      ),
    );
  }
}
