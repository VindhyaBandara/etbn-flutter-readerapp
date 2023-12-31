import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iridium_app/util/router.dart';
import 'package:iridium_app/views/main_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer startTimeout() => Timer(const Duration(seconds: 2), handleTimeout);

  void handleTimeout() {
    changeScreen();
  }

  Future changeScreen() async {
    MyRouter.pushPageReplacement(
      context,
      const MainScreen(),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/app-icon.png",
                height: 300.0,
                width: 300.0,
              ),
            ],
          ),
        ),
      );
}
