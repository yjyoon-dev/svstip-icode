import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'input_screen.dart';

class TitleScreen extends StatefulWidget {
  const TitleScreen({Key? key}) : super(key: key);

  @override
  State<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen> {
  var _buttonOpacity = 0.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/logo.png"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 128,
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Stack(children: [
            ColorFiltered(
                colorFilter:
                    const ColorFilter.mode(Colors.black38, BlendMode.darken),
                child: Image.asset(
                  "assets/images/background.jpg",
                  fit: BoxFit.fitWidth,
                )),
            Column(children: [
              Container(
                  padding: const EdgeInsets.all(92),
                  height: size.height,
                  width: size.width,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width,
                          child: DefaultTextStyle(
                              style: const TextStyle(
                                  fontSize: 64,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                      "Do you want to make your own icon of your application?             \n\nGo ahead with only single line of text!",
                                      speed: const Duration(milliseconds: 40),
                                      cursor: ""),
                                ],
                                onFinished: () {
                                  setState(() {
                                    _buttonOpacity = 1.0;
                                  });
                                },
                                isRepeatingAnimation: false,
                              )),
                        ),
                        const SizedBox(
                          height: 92,
                        ),
                        AnimatedOpacity(
                            opacity: _buttonOpacity,
                            duration: const Duration(milliseconds: 500),
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const InputScreen(),
                                    ));
                              },
                              style: ButtonStyle(
                                  textStyle: MaterialStateProperty.all<TextStyle>(
                                      const TextStyle(
                                          fontSize: 48, color: Colors.white)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.transparent),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  overlayColor: MaterialStateProperty.all<Color>(
                                      Colors.white30),
                                  shape: MaterialStateProperty.all<OutlinedBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(64),
                                  )),
                                  side: MaterialStateProperty.all<BorderSide>(
                                      const BorderSide(
                                          width: 1, color: Colors.white)),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(42))),
                              child: const Text("Get Started"),
                            )),
                      ],
                    ),
                  )),
              SizedBox(height: size.height / 6),
              Container(
                height: size.height / 3 * 2,
                width: size.width,
                color: Colors.white70,
                padding: const EdgeInsets.all(108),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/ai.png",
                          width: 360,
                          height: 360,
                        ),
                        const SizedBox(height: 72),
                        const Text("Unique design",
                            style: TextStyle(
                                fontSize: 56, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 36),
                        const Text(
                          "Because our service uses AI to design icons,\nyou can get your own unique icons!",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/rush.png",
                          width: 360,
                          height: 360,
                        ),
                        const SizedBox(height: 72),
                        const Text("Faster & Easier",
                            style: TextStyle(
                                fontSize: 56, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 36),
                        const Text(
                            "You can create an icon right away\nwith a simple one-line introduction to your application!",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/loss.png",
                          width: 360,
                          height: 360,
                        ),
                        const SizedBox(height: 72),
                        const Text("Cheaper",
                            style: TextStyle(
                                fontSize: 56, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 36),
                        const Text("Create up to 4 icons for free!",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height / 18),
              SizedBox(
                height: size.height,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height / 1.65,
                      width: size.width / 5,
                      padding: const EdgeInsets.all(48),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          color: Colors.pink.shade300.withOpacity(0.8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("FREE",
                                  style: TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("\$0",
                                  style: TextStyle(
                                      fontSize: 54,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Package showing 4 free icons",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("\n"),
                              Divider(
                                color: Colors.white,
                              ),
                              Text("\n"),
                              Text("• Provide 4 icons for free",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              const SizedBox(height: 12),
                              Text(
                                  "• Unique design which has never been created",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              const SizedBox(height: 12),
                              Text("• Support download icon image (480p)",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    const TextStyle(
                                        fontSize: 32, color: Colors.white)),
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Colors.transparent),
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.white),
                                overlayColor: MaterialStateProperty.all<Color>(
                                    Colors.white30),
                                shape: MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(64),
                                )),
                                side: MaterialStateProperty.all<BorderSide>(
                                    const BorderSide(
                                        width: 1, color: Colors.white)),
                                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    const EdgeInsets.fromLTRB(72, 18, 72, 18))),
                            child: const Text("Selected"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height / 1.65,
                      width: size.width / 5,
                      padding: const EdgeInsets.all(48),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          color: Colors.lightBlue.withOpacity(0.8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("PRO",
                                  style: TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("\$10.99",
                                  style: TextStyle(
                                      fontSize: 54,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow.shade600)),
                              Text("Get 10 icons without any limit",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow.shade600)),
                              Text("\n"),
                              Divider(
                                color: Colors.white,
                              ),
                              Text("\n"),
                              Text("• All features of FREE plan",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              const SizedBox(height: 12),
                              Text("• Unlimited download of icon",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              const SizedBox(height: 12),
                              Text("• Unlimited edit of icon",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              const SizedBox(height: 12),
                              Text("• High-resolution icon image (1080p)",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              const SizedBox(height: 12),
                              Text("• Provide diverse format (PNG, WEBP, etc.)",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    const TextStyle(
                                        fontSize: 32, color: Colors.white)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.lightBlue),
                                overlayColor: MaterialStateProperty.all<Color>(
                                    Colors.lightBlue.withOpacity(0.1)),
                                shape: MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(64),
                                )),
                                padding: MaterialStateProperty.all<
                                        EdgeInsetsGeometry>(
                                    const EdgeInsets.fromLTRB(72, 18, 72, 18))),
                            child: const Text("Select"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ]),
        ));
  }
}
