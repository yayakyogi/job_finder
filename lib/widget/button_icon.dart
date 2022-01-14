import 'package:flutter/material.dart';
import 'package:job_finder/themes.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({Key? key, required this.icon, required this.onPress})
      : super(key: key);

  final String icon;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: 32,
        height: 32,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(10)),
        child: Image.asset(icon),
      ),
    );
  }
}
