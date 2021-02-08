import 'package:animate_do/animate_do.dart';
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
              Expanded(
                flex: 3,
                child: BounceInDown(
                  delay: 1.seconds,
                  duration: 3.seconds,
                  child: Center(
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: SizedBox(
                    width: Get.width,
                    child: ElasticIn(
                      delay: 1.seconds,
                      duration: 3.seconds,
                      child: TyperAnimatedTextKit(
                        text: [
                          "GSS",
                        ],
                        speed: 150.milliseconds,
                        textStyle: TextStyle(
                            fontSize: 125.0, color: Colors.orange[400]),
                        textAlign: TextAlign.center,
                        alignment: AlignmentDirectional.topStart,
                        isRepeatingAnimation: false,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: SizedBox(
                    width: 300.0,
                    child: ElasticIn(
                      delay: 2.seconds,
                      duration: 0.seconds,
                      child: TyperAnimatedTextKit(
                        text: [
                          "Geology Software Services ",
                        ],
                        speed: 1.seconds,
                        textStyle: TextStyle(fontSize: 22.0),
                        textAlign: TextAlign.start,
                        alignment: AlignmentDirectional.topStart,
                        isRepeatingAnimation: false,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
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
