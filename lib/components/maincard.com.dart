import 'dart:ui';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:prototypes/components/cardtextitem.com.dart';
import 'package:prototypes/models/bus/bus.model.dart';
import 'package:prototypes/pages/detail.page.dart';

class MainCardCom extends StatelessWidget {
  const MainCardCom({
    Key? key,
    required this.bus,
    required this.busName,
    required this.busLocation,
    required this.busCost,
    required this.busBoarding,
    required this.loadingTime,
  }) : super(key: key);

  final String busName;
  final String busLocation;
  final String busCost;
  final String busBoarding;
  final String loadingTime;
  final Bus bus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Card(
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        child: GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: ((context) => DetailPage(bus: bus)))),
          child: SizedBox(
            height: 250,
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 0,
                  right: 70,
                  child: Lottie.asset(
                    'assets/lottie/116135-blob-lava.json',
                    reverse: true,
                  ),
                ),
                Positioned(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 8.0,
                        sigmaY: 8.0,
                      ),
                      child: const SizedBox(
                        width: double.infinity,
                        height: 250,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: -150,
                  child: SizedBox(
                    width: 300,
                    height: 250,
                    child: Image.asset('assets/images/Front.png'),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: CardTextItemCom(
                    icon: FluentIcons.vehicle_bus_16_filled,
                    title: busName,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Positioned(
                  top: 65,
                  left: 20,
                  child: CardTextItemCom(
                    icon: Icons.location_pin,
                    title: busLocation,
                  ),
                ),
                Positioned(
                  top: 110,
                  left: 20,
                  child: CardTextItemCom(
                    icon: FluentIcons.money_16_filled,
                    title: busCost,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 20,
                  child: CardTextItemCom(
                    icon: FluentIcons.people_queue_24_filled,
                    title: busBoarding,
                  ),
                ),
                Positioned(
                  top: 195,
                  left: 20,
                  child: CardTextItemCom(
                    icon: FluentIcons.timeline_20_filled,
                    title: loadingTime,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
