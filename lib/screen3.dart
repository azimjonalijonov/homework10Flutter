import 'package:flutter/material.dart';
import 'custom_widget.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWidget(title: 'Widget 3'),
            FadeTransition(
              opacity: AlwaysStoppedAnimation(0.5),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(
                  child: Text('Fade Transition'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
