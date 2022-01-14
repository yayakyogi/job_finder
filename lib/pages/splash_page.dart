import 'package:flutter/material.dart';
import 'package:job_finder/pages/home_page.dart';
import 'package:job_finder/themes.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width - (2 * 24),
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
              color: blueColor, borderRadius: BorderRadius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Get Started',
                style: fw_500.copyWith(color: whiteColor, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/ellipse.png',
                  height: 200,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 17),
                  child: Image.asset(
                    'assets/images/ellipse_alt.png',
                    height: 250,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            margin: const EdgeInsets.only(left: 45),
            child: Image.asset(
              'assets/images/ellipse_full.png',
              width: 77,
              height: 77,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find the Job \nYou've Always Dreamed of",
                  style: fw_500.copyWith(color: blackColor, fontSize: 26),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'One of the places where you will find the right job with your field of interest, and you just have to wait for the manager to call you to hire',
                  style: TextStyle(
                      height: 1.2,
                      fontSize: 18,
                      color: blackColor.withOpacity(0.6)),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
