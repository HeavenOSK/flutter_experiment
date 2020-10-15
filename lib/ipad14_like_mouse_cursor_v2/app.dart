import 'package:flutter/material.dart';
import 'package:flutter_experiment/ipad14_like_mouse_cursor_v2/cursor_over_layer/cursor_over_layer.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

import 'home.dart';

part 'app.g.dart';

@hwidget
Widget app() {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    builder: (_, child) => CursorOverLayer(child: child),
    home: Home(),
  );
}
