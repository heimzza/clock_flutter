import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../size_config.dart';
import '../../size_config.dart';
import '../../size_config.dart';
import '../../size_config.dart';
import '../../size_config.dart';
import 'clock.dart';
import 'country_card.dart';
import 'time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Gebze, Türkiye",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "New York, USA",
                    iconSrc: "assets/icons/Liberty.svg",
                    timeZone: "+9 saat",
                    time: "10:20",
                    period: "ö.sonra",
                  ),
                  CountryCard(
                    country: "Sydney, AU",
                    iconSrc: "assets/icons/Sydney.svg",
                    timeZone: "+15 saat",
                    time: "16:20",
                    period: "ö.sonra",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

