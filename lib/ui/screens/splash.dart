// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:master_brain/router/app_router.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  static const String route = "/splash";
  SplashScreen({super.key}) {
    /// Init Some Service: such as Storage...
    debugPrint("SplashScreen");
  }

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.router.push(const GameRoute());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(),
        child: const Center(
            child: CircularProgressIndicator(
          color: Colors.white,
        )),
      ),
    );
  }
}
