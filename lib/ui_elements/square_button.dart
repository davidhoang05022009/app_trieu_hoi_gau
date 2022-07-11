import 'package:flutter/material.dart';
import 'package:app_trieu_hoi_gau/constants.dart';

class SquareButton extends StatelessWidget {
  const SquareButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.buttonColor})
      : super(key: key);
  final Function() onPressed;
  final String text;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    double buttonWidthHeight =
        (MediaQuery.of(context).size.width - kPadding * 4) / 2;
    return Padding(
      padding: const EdgeInsets.all(kPadding / 2),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          minimumSize: MaterialStateProperty.all(
            Size(buttonWidthHeight, buttonWidthHeight),
          ),
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: appTextStyle.copyWith(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
