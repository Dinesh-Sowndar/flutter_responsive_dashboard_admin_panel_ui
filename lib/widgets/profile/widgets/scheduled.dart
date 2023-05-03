import 'package:flutter/material.dart';
import 'package:flutter_dashboard/model/scheduled_model.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';
import 'package:flutter_svg/svg.dart';

class Scheduled extends StatelessWidget {
  Scheduled({super.key});

  final List<ScheduledModel> scheduled = [
    ScheduledModel(title: "Hatha Yoga", date: "Today, 9AM - 10AM"),
    ScheduledModel(title: "Body Combat", date: "Tomorrow, 5PM - 6PM"),
    ScheduledModel(title: "Hatha Yoga", date: "Wednesday, 9AM - 10AM"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Scheduled",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 12,
        ),
        for (var i = 0; i < scheduled.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: CustomCard(
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            scheduled[i].title,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            scheduled[i].date,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SvgPicture.asset('assets/svg/more.svg')
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
