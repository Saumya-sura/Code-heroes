import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(
          builder: (BuildContext context) {
            return ElevatedButton(
              onPressed: () {
                BetterFeedback.of(context).show((UserFeedback feedback) {
                  print(feedback.text);
                  print(feedback.screenshot);
                });
              },
              child: Text('Feedback'),
            );
          },
        ),
      ),
    );
  }
}
