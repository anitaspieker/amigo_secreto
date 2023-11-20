import 'package:flutter/material.dart';

class SecretFriend extends StatelessWidget {
  const SecretFriend({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(800),
                      topRight: Radius.circular(800),
                    ),
                  ),
                ),
                Positioned(top: -150, child: Image.asset("assets/head.png")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
