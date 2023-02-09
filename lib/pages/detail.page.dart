import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:prototypes/components/cardtextitem.com.dart';
import 'package:prototypes/enums/busloading.enum.dart';
import 'package:prototypes/models/bus/bus.model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.bus});

  final Bus bus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bus.name!),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Lottie.asset(
            'assets/lottie/92893-man-waiting-car.json',
            repeat: false,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Card(
              elevation: 0,
              child: SizedBox(
                height: 250,
                child: Stack(
                  children: [
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
                        title: bus.name!,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Positioned(
                      top: 65,
                      left: 20,
                      child: CardTextItemCom(
                        icon: Icons.location_pin,
                        title: bus.locations!,
                      ),
                    ),
                    Positioned(
                      top: 110,
                      left: 20,
                      child: CardTextItemCom(
                        icon: FluentIcons.money_16_filled,
                        title: bus.price!,
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 20,
                      child: CardTextItemCom(
                        icon: FluentIcons.people_queue_24_filled,
                        title: busLoadingToString(bus.loading!),
                      ),
                    ),
                    bus.loading! == BusLoading.boardingInProgress
                        ? Positioned(
                            top: 195,
                            left: 20,
                            child: CardTextItemCom(
                              icon: FluentIcons.timeline_20_filled,
                              title: 'Time Past: ${bus.loadtime} minute',
                            ),
                          )
                        : const Positioned(
                            top: 195,
                            left: 20,
                            child: CardTextItemCom(
                              icon: FluentIcons.timeline_20_filled,
                              title: 'Waiting Turn',
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
