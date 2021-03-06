import 'package:flutter/material.dart';
import 'package:flutter_experiment/ipad14_like_mouse_cursor_v2/components/components.dart';
import 'package:flutter_experiment/ipad14_like_mouse_cursor_v2/cursor_over_layer/cursor_controller/cursor_controller.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'utils/utils.dart';

part 'home.g.dart';

@hwidget
Widget home() {
  final cursorController = useProvider(cursorControllerProvider);

  return Scaffold(
    body: GridPaper(
      child: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MouseModifierRegion(
                    onEnter: (pos, size) {
                      cursorController.enterTarget(pos, size);
                      print('onEnter: $pos, $size');
                    },
                    onExit: () {
                      cursorController.existTarget();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TargetBox(),
                    ),
                  ),
                  MouseModifierRegion(
                    onEnter: (pos, size) {
                      cursorController.enterTarget(pos, size);
                      print('onEnter: $pos, $size');
                    },
                    onExit: () {
                      cursorController.existTarget();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TargetBox(),
                    ),
                  ),
                  MouseModifierRegion(
                    onEnter: (pos, size) {
                      cursorController.enterTarget(pos, size);
                      print('onEnter: $pos, $size');
                    },
                    onExit: () {
                      cursorController.existTarget();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TargetBox(),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MouseModifierRegion(
                    onEnter: (pos, size) {
                      cursorController.enterTarget(pos, size);
                      print('onEnter: $pos, $size');
                    },
                    onExit: () {
                      cursorController.existTarget();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TargetBox(),
                    ),
                  ),
                  Gap(152),
                  MouseModifierRegion(
                    onEnter: (pos, size) {
                      cursorController.enterTarget(pos, size);
                      print('onEnter: $pos, $size');
                    },
                    onExit: () {
                      cursorController.existTarget();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TargetBox(),
                    ),
                  ),
                ],
              ),
              Center(
                child: MouseModifierRegion(
                  onEnter: (pos, size) {
                    cursorController.enterTarget(pos, size);
                    print('onEnter: $pos, $size');
                  },
                  onExit: () {
                    cursorController.existTarget();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: TargetBox(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
