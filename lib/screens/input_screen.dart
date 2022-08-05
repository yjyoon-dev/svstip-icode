import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'result_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  var _isGenerating = false;

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
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(Colors.black38, BlendMode.darken),
        )),
        child: Center(
          child: _isGenerating
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    DefaultTextStyle(
                      style:
                          const TextStyle(fontSize: 36.0, color: Colors.white),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('Generating icon...',
                              speed: const Duration(milliseconds: 150)),
                          WavyAnimatedText('Please wait...',
                              speed: const Duration(milliseconds: 150)),
                        ],
                        isRepeatingAnimation: false,
                        onFinished: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const ResultScreen(),
                              ));
                        },
                      ),
                    )
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Please describe the application icon you want",
                        style: TextStyle(
                            fontSize: 56,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(
                      height: 64,
                    ),
                    Container(
                      padding: const EdgeInsets.all(24),
                      width: size.width / 2,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              offset:
                                  Offset(2, 2), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(48)),
                      child: TextField(
                        style: TextStyle(fontSize: 24, color: Colors.black),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0),
                              borderRadius: BorderRadius.circular(48)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0),
                              borderRadius: BorderRadius.circular(48)),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0),
                              borderRadius: BorderRadius.circular(48)),
                          hintText: 'Input application icon description',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 92,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _isGenerating = true;
                        });
                      },
                      style: ButtonStyle(
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(
                                  fontSize: 32, color: Colors.white)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          overlayColor:
                              MaterialStateProperty.all<Color>(Colors.white30),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(64),
                          )),
                          side: MaterialStateProperty.all<BorderSide>(
                              const BorderSide(width: 1, color: Colors.white)),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  const EdgeInsets.all(36))),
                      child: const Text("Generate icon"),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
