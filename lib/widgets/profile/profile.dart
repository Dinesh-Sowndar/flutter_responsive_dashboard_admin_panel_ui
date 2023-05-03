import 'package:flutter/material.dart';
import 'package:flutter_dashboard/responsive.dart';
import 'package:flutter_dashboard/const.dart';
import 'package:flutter_dashboard/widgets/profile/widgets/scheduled.dart';
import 'package:flutter_dashboard/widgets/profile/widgets/weightHeightBloodCard.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(Responsive.isMobile(context) ? 10 : 30.0),
          topLeft: Radius.circular(Responsive.isMobile(context) ? 10 : 30.0),
        ),
        color: cardBackgroundColor,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(
                height:   50,
              ),
              Image.asset(
                "assets/images/avatar.png",
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Summer",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "Edit health details",
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.all(Responsive.isMobile(context) ? 15 : 20.0),
                child: const WeightHeightBloodCard(),
              ),
              SizedBox(
                height: Responsive.isMobile(context) ? 20 : 40,
              ),
              Scheduled()
            ],
          ),
        ),
      ),
    );
  }
}
