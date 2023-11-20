import 'package:amigo_secreto/splash/skinny.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _crossFadeState = CrossFadeState.showSecond;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: double.infinity,
      splash: AnimatedContainer(
        duration: const Duration(milliseconds: 2500),
        child: AnimatedCrossFade(
          duration: const Duration(milliseconds: 2500),
          firstChild: SecretFriend(width: MediaQuery.of(context).size.width * 4),
          secondChild: SecretFriend(width: MediaQuery.of(context).size.width),
          crossFadeState: _crossFadeState,
        ),
      ),
      nextScreen: Placeholder(),
    );
  }
}
