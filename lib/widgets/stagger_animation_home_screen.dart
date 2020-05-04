import 'package:flutter/material.dart';
import 'package:loginanimated/widgets/home_top.dart';

class StaggerAnimationHomeScreen extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimationHomeScreen({@required this.controller})
      : containerGrow = CurvedAnimation(
      parent: controller,
      curve: Curves.ease
  );

  final Animation<double> containerGrow;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        HomeTop(
          containerGrow: containerGrow,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}
