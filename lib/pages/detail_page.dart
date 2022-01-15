import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/themes.dart';
import 'package:job_finder/widget/button_icon.dart';
import 'package:job_finder/widget/button_switch.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // * Widget button category
  Widget buttonCategory({String title = ''}) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
        decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(width: 0.5, color: greyColor),
            borderRadius: BorderRadius.circular(6)),
        child: Text(
          title,
          style: const TextStyle(color: blackColor, fontSize: 12),
        ),
      ),
    );
  }

  // * Widget list responsibilities
  Widget responsibilities({String text = ''}) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
              color: blackColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(4)),
        ),
        const SizedBox(width: 11),
        Text(
          text,
          style: TextStyle(color: blackColor, fontSize: 12),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    String description =
        'Currently we are in need of several UI Designers to complete our designer shortage, we hope that with this we can improve the quality of our user interface to customers, because it is very important for...';
    bool isMenuDescription = true;
    bool isMenuCompany = false;

    return Scaffold(
      backgroundColor: grayColor,
      body: SafeArea(
          child: ListView(
        children: [
          const SizedBox(height: 12),
          // * Icon category & notification
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonIcon(
                    icon: 'assets/icons/ic_arrow_left.png', onPress: () {}),
                Text('Job Detail',
                    style: fw_500.copyWith(color: blackColor, fontSize: 16)),
                ButtonIcon(
                    icon: 'assets/icons/ic_bookmark_black.png', onPress: () {}),
              ],
            ),
          ),
          const SizedBox(height: 64),
          Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(14)),
              ),
              const SizedBox(height: 16),
              Text(
                'Senior UI Designer',
                style: fw_500.copyWith(color: blackColor, fontSize: 18),
              ),
              const SizedBox(height: 4),
              Text(
                'Jakarta, Indonesia',
                style: TextStyle(color: blackColor.withOpacity(0.8)),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonCategory(title: 'Full time'),
                  const SizedBox(width: 16),
                  buttonCategory(title: 'Onsite'),
                  const SizedBox(width: 16),
                  buttonCategory(title: 'Remote'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 56),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // * Button Switch description & company
                ButtonSwitch(
                  onPressDescription: () {
                    print('Menu description');
                    setState(() {
                      isMenuCompany = false;
                      isMenuDescription = true;
                    });
                  },
                  onPressCompany: () {
                    print('Menu company');
                    setState(() {
                      isMenuDescription = false;
                      isMenuCompany = true;
                    });
                  },
                  isDecription: isMenuDescription,
                  isCompany: isMenuCompany,
                ),
                const SizedBox(
                  height: 24,
                ),
                // * Title about this job
                Text(
                  'About this job',
                  style: fw_500.copyWith(color: blackColor, fontSize: 16),
                ),
                const SizedBox(height: 8),
                // * Detail this job
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: description.length > 50
                            ? description.substring(0, 200) + '...'
                            : description,
                        style: fw_500.copyWith(
                            color: blackColor.withOpacity(0.5), fontSize: 12)),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Read more');
                          },
                        text: 'Read More',
                        style: fw_500.copyWith(color: blueColor, fontSize: 12)),
                  ]),
                ),
                const SizedBox(height: 16),
                Text(
                  'Job Responsibilities',
                  style: fw_500.copyWith(color: blackColor, fontSize: 16),
                ),
                const SizedBox(height: 8),
                responsibilities(
                    text:
                        'At least have 3 years of experience as a UI Designer'),
                const SizedBox(height: 8),
                responsibilities(
                    text: 'Able to work in a team or individually'),
                const SizedBox(height: 8),
                responsibilities(text: 'Have a good passion in UI Design'),
                const SizedBox(height: 43),
                SizedBox(
                  width: double.infinity,
                  height: 64,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        primary: blueColor,
                        textStyle: const TextStyle(fontSize: 16)),
                    child: const Text('Apply Now'),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
