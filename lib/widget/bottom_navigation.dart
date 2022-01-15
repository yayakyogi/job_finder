import 'package:flutter/material.dart';
import 'package:job_finder/themes.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({required this.pageActive, Key? key})
      : super(key: key);
  final String pageActive;

  Widget menuIcon(
      {String icon = '',
      bool isActive = false,
      required GestureTapCallback onPress}) {
    return InkWell(
      onTap: onPress,
      child: Column(
        children: [
          Container(
            width: 24,
            height: 3,
            decoration: BoxDecoration(
                color: isActive ? blueColor : whiteColor,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(4))),
          ),
          const Spacer(),
          Image.asset(
            icon,
            width: 24,
          ),
          const Spacer()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isPageHome = pageActive == 'Home' ? true : false;
    bool isPageBookmark = pageActive == 'Bookmark' ? true : false;
    bool isPageMessage = pageActive == 'Message' ? true : false;
    bool isPageProfile = pageActive == 'Profile' ? true : false;

    return Container(
      width: double.infinity,
      height: 75,
      padding: const EdgeInsets.symmetric(horizontal: 37),
      decoration: const BoxDecoration(color: whiteColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          menuIcon(
              icon: 'assets/icons/ic_home.png',
              isActive: isPageHome,
              onPress: () {
                print('Homepage');
              }),
          menuIcon(
              icon: 'assets/icons/ic_bookmark.png',
              isActive: isPageBookmark,
              onPress: () {
                print('Bookmark');
              }),
          menuIcon(
              icon: 'assets/icons/ic_message.png',
              isActive: isPageMessage,
              onPress: () {
                print('Message');
              }),
          menuIcon(
              icon: 'assets/icons/ic_profile.png',
              isActive: isPageProfile,
              onPress: () {
                print('Profile');
              }),
        ],
      ),
    );
  }
}
