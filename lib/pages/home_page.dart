import 'package:flutter/material.dart';
import 'package:job_finder/themes.dart';
import 'package:job_finder/widget/button_icon.dart';
import 'package:job_finder/widget/popular_job.dart';
import 'package:job_finder/widget/recomendation_job.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayColor,
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 24,
            ),
            // * Icon category & notification
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonIcon(
                      icon: 'assets/icons/ic_category.png', onPress: () {}),
                  ButtonIcon(
                      icon: 'assets/icons/ic_notification.png', onPress: () {}),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // * Title
                  const Text(
                    'Hello Yeeds!',
                    style: TextStyle(color: blackColor, fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Find Your Dream Job',
                    style: fw_700.copyWith(color: blackColor, fontSize: 24),
                  ),
                  const SizedBox(height: 24),

                  // *  Form search box & category
                  Row(
                    children: [
                      Flexible(
                          child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        shadowColor: greyColor,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 2),
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.search,
                                color: greyColor,
                              ),
                              SizedBox(width: 10),
                              Flexible(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search your dream job',
                                    hintStyle: TextStyle(color: greyColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                      const SizedBox(width: 16),
                      Container(
                        width: 48,
                        height: 48,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.circular(14)),
                        child: Image.asset('assets/icons/ic_filter.png'),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Popular Job',
                style: fw_500.copyWith(color: blackColor, fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SizedBox(width: 24),
                  PopularJob(
                    title: 'Senior Graphic Designer',
                    salaryMin: 50,
                    salaryMax: 60,
                    position: 'Dsgn Agency',
                    city: 'Jakarta',
                    country: 'Id',
                    isPrimary: true,
                  ),
                  PopularJob(
                    title: 'Senior Graphic Designer',
                    salaryMin: 50,
                    salaryMax: 60,
                    position: 'Dsgn Agency',
                    city: 'Jakarta',
                    country: 'Id',
                    isPrimary: false,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recommendation Job',
                      style: fw_500.copyWith(color: blackColor, fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        RecomendationJob(
                          title: 'Tokopedia',
                          working: 'Onsite',
                          position: 'Sr. UI Designer',
                          city: 'Jakarta',
                          country: 'Indonesia',
                        ),
                        SizedBox(width: 15),
                        RecomendationJob(
                          title: 'Gojek',
                          working: 'Onsite',
                          position: 'Software Engineer',
                          city: 'Jakarta',
                          country: 'Indonesia',
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        RecomendationJob(
                          title: 'YouTube',
                          working: 'Onsite',
                          position: 'Project Manager',
                          city: 'California',
                          country: 'USA',
                        ),
                        SizedBox(width: 15),
                        RecomendationJob(
                          title: 'Shopee',
                          working: 'Remote',
                          position: 'UI UX Designer',
                          city: '',
                          country: 'Singapore',
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
