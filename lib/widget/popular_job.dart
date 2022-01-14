import 'package:flutter/material.dart';
import 'package:job_finder/themes.dart';

class PopularJob extends StatelessWidget {
  const PopularJob(
      {Key? key,
      required this.title,
      required this.position,
      required this.city,
      required this.country,
      required this.salaryMin,
      required this.salaryMax,
      required this.isPrimary})
      : super(key: key);

  final String title;
  final String position;
  final String city;
  final String country;
  final int salaryMin;
  final int salaryMax;
  final bool isPrimary;

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
          style: TextStyle(
              color: isPrimary ? blueColor : blackColor, fontSize: 12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 150,
      margin: const EdgeInsets.only(right: 16, bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: isPrimary ? blueColor : whiteColor,
          border: Border.all(width: 0.5, color: greyColor),
          borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // * Icon & salary
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    color: isPrimary ? whiteColor : greyColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
              const Spacer(),
              Text(
                '\$ ${salaryMin}K - \$ ${salaryMax}K',
                style:
                    fw_500.copyWith(color: isPrimary ? whiteColor : blackColor),
              )
            ],
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: fw_500.copyWith(color: isPrimary ? whiteColor : blackColor),
          ),
          const SizedBox(height: 4),
          Text(
            '${position} • ${city}, ${country} ',
            style: TextStyle(
                color: isPrimary ? whiteColor : blackColor.withOpacity(0.8),
                fontSize: 12),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonCategory(title: 'Full time'),
              buttonCategory(title: 'Remote'),
              buttonCategory(title: 'Anywhere'),
            ],
          )
        ],
      ),
    );
  }
}
