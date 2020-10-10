import 'package:flutter/material.dart';

class Playground extends StatelessWidget {
  const Playground({
    @required this.child,
    Key key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final viewportSize = Size(
          constraints.maxWidth,
          constraints.maxHeight,
        );
        return SizedBox.fromSize(
          size: viewportSize,
          child: InteractiveViewer(
            boundaryMargin: EdgeInsets.symmetric(
              horizontal: viewportSize.width,
              vertical: viewportSize.height,
            ),
            child: child,
          ),
        );
      },
    );
  }
}
