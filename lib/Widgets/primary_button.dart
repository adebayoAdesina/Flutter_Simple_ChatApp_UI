import 'package:flutter/material.dart';

import '../Util/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Color color;
  final EdgeInsets padding;
  final Function onPressed;
  const PrimaryButton(
      {Key? key,
      required this.text,
      required this.color,
      required this.padding,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onPressed(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      color: color,
      padding: padding,
      minWidth: double.infinity,
      child: Text(
        text,
        style: const TextStyle(
          color: kWhiteColor,
        ),
      ),
    );
  }
}
