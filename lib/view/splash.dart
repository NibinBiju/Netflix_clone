import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colors.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/catogory_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashTime();
  }

  Future<void> splashTime() async {
    await Future.delayed(const Duration(seconds: 4))
        .then((value) => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return CategoryPage();
              },
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 207,
              height: 55.62,
              child: Image.asset(ImageConstant.mainLogo),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const CircularProgressIndicator(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
