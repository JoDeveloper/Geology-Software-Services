import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Color(0xFFFDFDFD)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(child: Image.asset('assets/logo.png')),
              Center(
                child: SizedBox(
                  width: Get.width - 100,
                  child: TextLiquidFill(
                    boxHeight: Get.height / 4,
                    waveDuration: 3.seconds,
                    loadDuration: 3.seconds,
                    text: 'GSS',
                    boxBackgroundColor: Color(0xFFFDFDFD),
                    waveColor: Colors.orange[400],
                    textStyle: TextStyle(
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.w900,
                      fontSize: 175.0,
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: Get.width - 100,
                  child: TyperAnimatedTextKit(
                    text: [
                      "Geology Software Services ",
                    ],
                    speed: 150.milliseconds,
                    textStyle: TextStyle(fontSize: 30.0),
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart,
                    isRepeatingAnimation: false,
                  ),
                ),
              ),
              SizedBox(height: Get.height / 10),
              Text(
                '${controller.year}',
                style: TextStyle(
                  color: Colors.orange[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
