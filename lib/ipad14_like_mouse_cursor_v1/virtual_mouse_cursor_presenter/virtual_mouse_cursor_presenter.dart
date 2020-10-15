import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'positioned_mouse_cursor.dart';
import 'virtual_mouse_cursor_controller.dart';

class VirtualMouseCursorPresenter extends HookWidget {
  const VirtualMouseCursorPresenter({
    @required this.child,
    Key key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(
      virtualMouseCursorControllerProvider.select((_) => _),
    );

    return MouseRegion(
      cursor: SystemMouseCursors.none,
      onHover: (event) {
        controller.updateRealPosition(event.position);
      },
      onExit: (_) {
        controller.hide();
      },
      child: _VirtualMouseCursorPresenter(
        child: child,
      ),
    );
  }
}

class _VirtualMouseCursorPresenter extends StatelessWidget {
  const _VirtualMouseCursorPresenter({
    @required this.child,
    Key key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        PositionedMouseCursor(),
      ],
    );
  }
}
