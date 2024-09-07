import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget({
    super.key,
    required this.gradient,
    required this.widget,
  });

  final Widget widget;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: widget,
    );
  }
}
