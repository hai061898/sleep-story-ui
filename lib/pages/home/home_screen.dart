import 'package:flutter/material.dart';
import 'package:sleep_story/utils/constants.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Body(),
      bottomNavigationBar: buildBottomAppBar(context),
    );
  }

  BottomNavigationBar buildBottomAppBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      backgroundColor: kPrimary,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.nights_stay_outlined),
          label: 'Sleep',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.nightlife),
          label: 'Meditate',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          label: 'Music',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
      ],
    );
  }
}
