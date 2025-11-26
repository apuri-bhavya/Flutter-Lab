
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedTextScreen(),
    );
  }
}

class AnimatedTextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Typewriter animated text
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Welcome to Flutter!',
                  textStyle: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  speed: Duration(milliseconds: 200), // Speed of typing
                ),
              ],
              totalRepeatCount: 1, // Number of times the animation repeats
              pause: Duration(milliseconds: 1000), // Pause before it repeats
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            SizedBox(height: 50), // Spacer between texts

            // Fade animated text
            AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Flutter is amazing!',
                  textStyle: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.green,
                  ),
                ),
              ],
              totalRepeatCount: 3, // Repeat 3 times
              pause: Duration(milliseconds: 500), // Pause between fades
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ],
        ),
      ),
    );
  }
}
