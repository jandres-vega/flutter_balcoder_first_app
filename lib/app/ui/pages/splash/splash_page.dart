import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_balcoder_first_app/app/ui/pages/splash/splash_controller.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SplashController(),
      child: const SplashContent(),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SplashController>(
      builder: (context, controller, _) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (controller.routeName != null) {
            Navigator.of(context).pushReplacementNamed(controller.routeName!);
          }
        });

        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            statusBarColor: Colors.blueAccent,
            statusBarIconBrightness: Brightness.dark,
          ),
          child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/BALCODER.png'),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const LinearProgressIndicator(
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.cyan),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}