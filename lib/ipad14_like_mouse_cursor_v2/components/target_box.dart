import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'target_box.g.dart';

@hwidget
Widget targetBox() {
  final context = useContext();
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        width: 2,
        color: Color.fromRGBO(170, 170, 170, 1.0),
      ),
      borderRadius: BorderRadius.circular(80),
    ),
    padding: EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 32,
    ),
    child: Text(
      'BOX',
      style: Theme.of(context).textTheme.headline6.copyWith(
            color: Color.fromRGBO(170, 170, 170, 1.0),
          ),
    ),
  );
}
