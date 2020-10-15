import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

import 'utils/utils.dart';

part 'home.g.dart';

@hwidget
Widget home() {
  return Scaffold(
    body: MouseModifierRegion(
      onEnter: (pos, size) {
        print(pos);
        print(size);
      },
      onExit: () {},
      child: GridPaper(
        child: FractionallySizedBox(
          heightFactor: 1,
          widthFactor: 1,
        ),
      ),
    ),
  );
}
