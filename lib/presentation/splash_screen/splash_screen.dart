import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:task_interview/Constants/colors.dart';
import 'package:task_interview/Constants/paths.dart';
import 'package:task_interview/Constants/utils.dart';
import 'package:task_interview/presentation/auth/main_auth.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>  with SingleTickerProviderStateMixin {

  bool animationComplete = false;
  late AnimationController controller ;
  bool show_menu = false;

  @override
  void initState() {
    controller = AnimationController(
        duration:  Duration( seconds:  3),
        vsync: this);
    controller.forward();
    controller.addListener(() {
      setState(() {
      });
      controller.value == 1? animationComplete = true : animationComplete = false;
      print(controller.value);
      print('the animation boolean is $animationComplete');
    });
    Timer(
        Duration(
          seconds: 5,
        ),
            ()=>
            setState(() {
              show_menu =true;
            })
             );

    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.greenSplash,
        body: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedContainer(
                height: animationComplete ? 150 : mediaHeight(context: context,height: .8),
                duration: Duration(seconds: 2),
                child: Center(
                  child: Shimmer(
                    duration: Duration(seconds: 3), //Default value
                    interval: Duration(seconds: 4), //Default value: Duration(seconds: 0)
                    color: ColorConstant.mediumSwitch, //Default value
                    colorOpacity: 1, //Default value
                    enabled: animationComplete? true : false, //Default value
                    direction: ShimmerDirection.fromLBRT(),
                    child: Center(child: Image.asset(PathImage.logo_png,
                      height: show_menu?100: 150,
                      width:   mediaWidth(context: context,width: .5),
                    )),
                  ),
                ),
              ),
              animationComplete?

              Container(
              // height: mediaHeight(context: context,height: .6),
              width: double.infinity,
              color: ColorConstant.backgroundColor,
               child: Auth(),
              ):Container(),
            ],
          ),
        ),
      ),
    );
  }
}
