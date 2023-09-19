import 'package:flutter/material.dart';
import 'package:netflix_clone/components/subtext.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: Image.asset('assets/images/Group 1.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 78,
            height: 27,
            child: Center(
              child: SubText(text: 'Add profile'),
            ),
          )
        ],
      ),
    );
  }
}
