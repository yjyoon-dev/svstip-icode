import 'package:flutter/material.dart';

import 'title_screen.dart';
import 'dart:html' as html;

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

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
              colorFilter:
                  const ColorFilter.mode(Colors.black38, BlendMode.darken),
            ),
          ),
          child: Stack(children: [
            Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: size.height / 2.45,
                  color: Colors.white,
                )),
            SizedBox(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      "4 unique icons for \"music player\" have been generated!",
                      style: TextStyle(
                          fontSize: 56,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                      "If you want to download high-resolution images of those icons, you need to get PRO plan",
                      style: TextStyle(fontSize: 24, color: Colors.white70)),
                  SizedBox(
                    height: 168,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          final blob = html.Blob([""]);
                          final url = html.Url.createObjectUrlFromBlob(blob);
                          final anchor = html.document.createElement('a')
                              as html.AnchorElement
                            ..href = url
                            ..style.display = 'none'
                            ..download = 'icode_music_player_icon_01.png';
                          html.document.body!.children.add(anchor);
                          anchor.click();
                          html.Url.revokeObjectUrl(url);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Image.asset("assets/images/1.png"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          final blob = html.Blob([""]);
                          final url = html.Url.createObjectUrlFromBlob(blob);
                          final anchor = html.document.createElement('a')
                              as html.AnchorElement
                            ..href = url
                            ..style.display = 'none'
                            ..download = 'icode_music_player_icon_02.png';
                          html.document.body!.children.add(anchor);
                          anchor.click();
                          html.Url.revokeObjectUrl(url);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Image.asset("assets/images/2.png"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          final blob = html.Blob([""]);
                          final url = html.Url.createObjectUrlFromBlob(blob);
                          final anchor = html.document.createElement('a')
                              as html.AnchorElement
                            ..href = url
                            ..style.display = 'none'
                            ..download = 'icode_music_player_icon_03.png';
                          html.document.body!.children.add(anchor);
                          anchor.click();
                          html.Url.revokeObjectUrl(url);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Image.asset("assets/images/3.png"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          final blob = html.Blob([""]);
                          final url = html.Url.createObjectUrlFromBlob(blob);
                          final anchor = html.document.createElement('a')
                              as html.AnchorElement
                            ..href = url
                            ..style.display = 'none'
                            ..download = 'icode_music_player_icon_04.png';
                          html.document.body!.children.add(anchor);
                          anchor.click();
                          html.Url.revokeObjectUrl(url);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Image.asset("assets/images/4.png"),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 48,
                child: SizedBox(
                  width: size.width,
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const TitleScreen(),
                            ));
                      },
                      style: ButtonStyle(
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(
                                  fontSize: 24, color: Colors.black)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          overlayColor:
                              MaterialStateProperty.all<Color>(Colors.black12),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(64),
                          )),
                          side: MaterialStateProperty.all<BorderSide>(
                              const BorderSide(width: 1, color: Colors.black)),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  const EdgeInsets.all(32))),
                      child: const Text("Back to home"),
                    ),
                  ),
                ))
          ]),
        ));
  }
}
