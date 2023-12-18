import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:homework10/screen3.dart';
import 'custom_widget.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWidget(title: 'Widget 2'),
            PhysicsAnimation(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen3()),
                );
              },
              child: Text('Next Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class PhysicsAnimation extends StatefulWidget {
  @override
  _PhysicsAnimationState createState() => _PhysicsAnimationState();
}

class _PhysicsAnimationState extends State<PhysicsAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late SpringSimulation simulation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
    );
    simulation = SpringSimulation(
      SpringDescription(
        mass: 1,
        stiffness: 100,
        damping: 10,
      ),
      controller.value,
      1.0,
      0,
    );
    controller.animateWith(simulation);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.green,
      child: Center(
        child: Text('Physics Animation'),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
