import 'package:flutter/material.dart';
import 'package:job_finder/themes.dart';

class ButtonSwitch extends StatelessWidget {
  const ButtonSwitch(
      {Key? key,
      required this.onPressDescription,
      required this.onPressCompany,
      required this.isDecription,
      required this.isCompany})
      : super(key: key);
  final GestureTapCallback onPressDescription;
  final GestureTapCallback onPressCompany;
  final bool isDecription;
  final bool isCompany;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
          border: Border.all(
              width: 0.25, color: const Color.fromRGBO(0, 0, 0, 0.3)),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: onPressDescription,
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                    color: isDecription ? blueColor : whiteColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  'Description',
                  style:
                      TextStyle(color: isDecription ? whiteColor : blackColor),
                )),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: onPressCompany,
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                    color: isCompany ? blueColor : whiteColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  'Company',
                  style: TextStyle(color: isCompany ? whiteColor : blackColor),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
