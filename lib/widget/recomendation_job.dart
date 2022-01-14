import 'package:flutter/material.dart';
import 'package:job_finder/themes.dart';

class RecomendationJob extends StatelessWidget {
  const RecomendationJob(
      {Key? key,
      required this.title,
      required this.working,
      required this.position,
      required this.city,
      required this.country})
      : super(key: key);

  final String title;
  final String working;
  final String position;
  final String city;
  final String country;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        height: 107,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // * Logo & Title
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: grayColor, borderRadius: BorderRadius.circular(6)),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: fw_500.copyWith(color: blackColor, fontSize: 16),
                    ),
                    Text(working,
                        style:
                            const TextStyle(color: blackColor, fontSize: 11)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),
            Text(
              position,
              style: fw_500.copyWith(color: blackColor, fontSize: 12),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Image.asset('assets/icons/ic_location.png',
                    width: 16, height: 16),
                const SizedBox(width: 4),
                Text(
                  city == '' ? '${country}' : '${city} ${country}',
                  style: TextStyle(color: blackColor, fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
