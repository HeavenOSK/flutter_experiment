import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'virtual_mouse_cursor.dart';
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

class PositionedMouseCursor extends HookWidget {
  const PositionedMouseCursor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final info = useProvider(
      virtualMouseCursorControllerProvider
          .select((controller) => controller.value),
    );
    final realPosition = info.when(
      notShowing: () => null,
      showing: (realPosition, __) => realPosition,
    );

    if (realPosition == null) {
      return SizedBox.shrink();
    } else {
      return Positioned(
        top: realPosition.dy - VirtualMouseCursor.radius / 2,
        left: realPosition.dx - VirtualMouseCursor.radius / 2,
        child: VirtualMouseCursor(),
      );
    }
  }
}
