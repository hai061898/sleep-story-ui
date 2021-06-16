import 'package:get/get.dart';

import 'pages/home/home_screen.dart';
import 'pages/intro/intro_screen.dart';

routes() =>[
  GetPage(name: '/', page:() => IntroScreen()),
  GetPage(name: '/home', page:() => HomeScreen()),
  
];