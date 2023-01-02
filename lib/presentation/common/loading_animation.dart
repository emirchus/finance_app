import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class LoadingAnimation extends StatelessWidget {
  final double width;
  final double height;
  const LoadingAnimation({
    super.key,
    this.width = 100,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: const RiveAnimation.asset(
        'assets/animations/loading.riv',
        fit: BoxFit.cover,
        placeHolder: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
