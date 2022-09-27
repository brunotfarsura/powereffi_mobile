import 'package:flutter/material.dart';

class InitialScreenLogo extends StatefulWidget {
  const InitialScreenLogo({super.key});

  final Text title = const Text("PowerEffi - Save money and energy!");

  @override
  State<InitialScreenLogo> createState() => _InitialScreenLogoState();
}

class _InitialScreenLogoState extends State<InitialScreenLogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: widget.title,
          actions: [
            IconButton(
                icon: const Icon(Icons.add_circle),
                onPressed: () {
                  Navigator.pushNamed(context, "/personalData");
                }),
            IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pushNamed(context, "/chartConsumptionScreen");
                })
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset("images/powerEffiLogo.jpeg", fit: BoxFit.fill),
        ));
  }
}
