import 'package:flutter/material.dart';

// 474b41
// 4d5d45
// 667256
// 7a231d
// b43b2b

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4D5D45),
      body: Column(
        children: [
          const Spacer(),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xFF7A231D),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(800),
                    topRight: Radius.circular(800),
                  ),
                ),
                child: const Column(
                  children: [
                    Spacer(),
                    Text(
                      "Amigo\nSecreto!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Amigo Secreto!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
              Positioned(
                  top: -150,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        color: const Color(0xFFb43b2b),
                        height: 200,
                        width: 100,
                      ),
                      Image.asset(
                        "assets/head.png",
                        color: Colors.white,
                        height: 300,
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
