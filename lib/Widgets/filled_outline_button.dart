import 'package:flutter/material.dart';

import '../Util/colors.dart';

class FilledOutlineButton extends StatelessWidget {
  final bool isFilled;
  final String text;
  final Function onPressed;
  const FilledOutlineButton(
      {Key? key,
      this.isFilled = true,
      required this.text,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mode = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? kContentdarkColor
        : kContentdarkColor;
    return MaterialButton(
      onPressed: () => onPressed(),
      elevation: isFilled ? 4 : 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color: kWhiteColor),
      ),
      color: isFilled ? kWhiteColor : kTransparentColor,
      child: Text(
        text,
        style: TextStyle(
          color: !isFilled ? kWhiteColor : mode,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
