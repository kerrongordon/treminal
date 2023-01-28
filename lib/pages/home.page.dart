import 'package:flutter/material.dart';
import 'package:prototypes/components/appbarsearch.com.dart';
import 'package:prototypes/components/maincard.com.dart';
import 'package:prototypes/components/namecard.com.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus Terminal'),
        centerTitle: true,
        backgroundColor: theme.primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(230),
          child: AppBarSearchCom(),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        children: const [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Location',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          MainCardCom(
            busName: 'Bus Name Bus Name Bus Name ',
            busLocation: 'Bus Location',
            busCost: '\$2.50',
            busBoarding: 'Boarding in Progress',
            loadingTime: 'Time Past: 10 minute',
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Queue Line - 3',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          NameCardCom(title: 'Bus Name'),
          NameCardCom(title: 'Bus Name'),
          NameCardCom(title: 'Bus Name'),
        ],
      ),
    );
  }
}
