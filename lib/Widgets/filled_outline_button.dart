import 'package:flutter/material.dart';

import '../Util/colors.dart';

class FilledOutlineButton extends StatelessWidget {
  final bool isFilled;
  final String text;
  final Function onPressed;
  const FilledOutlineButton(
      {Key? key,
      required this.isFilled,
      required this.text,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onPressed(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color: kWhiteColor),
      ),
      color: isFilled ? kWhiteColor : kTransparentColor,
      child: Text(
        text,
        style: TextStyle(
          color: isFilled ? kWhiteColor : kWhiteColor,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
