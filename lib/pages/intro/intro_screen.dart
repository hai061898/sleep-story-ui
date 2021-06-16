import 'package:flutter/material.dart';
import 'package:sleep_story/utils/constants.dart';

import 'components/body.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Body(),
    );
  }
}
