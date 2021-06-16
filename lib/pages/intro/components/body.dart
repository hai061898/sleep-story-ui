import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sleep_story/pages/home/home_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/bg_wave.svg',
            fit: BoxFit.cover,
            alignment: AlignmentDirectional.topStart,
          ),
          Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                "Welcome to Sleep Story",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Explore the new king of sleep, it uses sound and visualisation to create perfect conditions for refreshing sleep",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      'assets/bg_birds.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: ConstrainedBox(  
                   constraints: BoxConstraints.tightFor(width: 400, height: 50),
                   child: ElevatedButton(
                     onPressed: ()=>Get.to(HomeScreen()),
                     style: ElevatedButton.styleFrom(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(18.0),
                         side: BorderSide(
                           color: Colors.deepPurpleAccent,
                         ),
                         
                       ),
                       primary: Colors.deepPurple,
                     ),
                     child: Text(
                       "Get Start".toUpperCase(),
                        style: TextStyle(fontSize: 14,color: Colors.white),
                     ),
                   ),
                 ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
