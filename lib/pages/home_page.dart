// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - (2*24),
        padding: EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Color(0xff5077DF),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Get Started',
              style: TextStyle(
                fontFamily: 'DM-Sans',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xffFFFFFF)
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
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
                    margin: EdgeInsets.only(top: 17),
                    child: Image.asset(
                      'assets/images/ellipse_alt.png',
                      height: 250,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(left: 45),
              child: Image.asset(
                'assets/images/ellipse_full.png',
                width: 77,
                height: 77,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find the Job \nYou've Always Dreamed of",
                    style: TextStyle(
                      fontFamily: 'DM-Sans',
                      fontSize: 25,
                      color: Color(0xff081D43),
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'One of the places where you will find the right job with your field of interest, and you just have to wait for the manager to call you to hire',
                    style: TextStyle(
                      fontFamily: 'DM-Sans',
                      fontSize: 16,
                      color: Color(0xff081D43).withOpacity(0.6),
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}