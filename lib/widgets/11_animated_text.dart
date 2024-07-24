import "package:animated_text_kit/animated_text_kit.dart";
import "package:flutter/material.dart";

class myAnimatedText extends StatefulWidget {
  const myAnimatedText({super.key});

  @override
  State<myAnimatedText> createState() => _myAnimatedTextState();
}

class _myAnimatedTextState extends State<myAnimatedText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Text"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              AnimatedTextKit(
                repeatForever: true,
                totalRepeatCount: 5,
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                  animatedTexts: [
                    TyperAnimatedText("Hello", textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green,),
                      speed: const Duration(milliseconds: 200)
                    )
                  ]),
            const SizedBox(
              height: 10,
            ),
            AnimatedTextKit(
              repeatForever: true,
                animatedTexts: [
                  RotateAnimatedText("Beautiful People", textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red,)),
                  // RotateAnimatedText("People", textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red,)),
                ]
                  ),
            AnimatedTextKit(
              repeatForever: true,
                animatedTexts: [
                  ScaleAnimatedText("I am Nouman Khan", textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black,)),
              // ScaleAnimatedText("Nouman Khan", textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black,)),

            ])
          ],
        ),
      ),
    );
  }
}
