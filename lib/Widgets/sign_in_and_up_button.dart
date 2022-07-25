import 'package:flutter/material.dart';

import '../Util/colors.dart';
import 'primary_button.dart';

class SignInAndUpButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;
  const SignInAndUpButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kWhiteColor.withOpacity(0.3),
              offset: const Offset(2, 2),
              blurRadius: 100.0,
            ),
          ],
        ),
        child: PrimaryButton(
          text: text,
          padding: const EdgeInsets.all(20),
          onPressed: onPressed,
          color: color,
        ),
      ),
    );
  }
}
