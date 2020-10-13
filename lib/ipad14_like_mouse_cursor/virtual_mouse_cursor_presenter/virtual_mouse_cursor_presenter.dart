import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

class PositionedMouseCursor extends HookWidget {
  const PositionedMouseCursor({Key key}) : super(key: key);

  static double get radius => 20;

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(virtualMouseCursorControllerProvider);
    final info = controller.value;
    final realPosition = info.when(
      notShowing: () => null,
      showing: (realPosition, __) => realPosition,
    );

    final target = info.when(
      notShowing: () => null,
      showing: (_, target) => target,
    );
    double height;
    double width;
    final hasFocus = target != null;
    if (realPosition == null) {
      return SizedBox.shrink();
    } else {
      Offset offset;
      if (target == null) {
        height = radius;
        width = radius;
        offset = Offset(
          realPosition.dx - radius / 2,
          realPosition.dy - radius / 2,
        );
      } else {
        offset = target.position;
        height = target.targetSize.height;
        width = target.targetSize.width;
      }
      final decoration = BoxDecoration(
        borderRadius: BorderRadius.circular(
          hasFocus ? radius / 3 : radius,
        ),
        border: Border.all(
          color: Color.fromRGBO(170, 170, 170, 0.5),
        ),
        color: Color.fromRGBO(170, 170, 170, 0.2),
      );
      final top = offset.dy;
      final left = offset.dx;
      return Stack(
        fit: StackFit.expand,
        children: [
          if (!hasFocus)
            Positioned(
              top: top,
              left: left,
              child: IgnorePointer(
                child: Container(
                  height: height,
                  width: width,
                  decoration: decoration,
                ),
              ),
            ),
          AnimatedPositionedContainer(
            top: top,
            left: left,
            height: height,
            width: width,
            decoration: decoration,
            hasFocus: hasFocus,
          ),
        ],
      );
    }
  }
}

class AnimatedPositionedContainer extends ImplicitlyAnimatedWidget {
  const AnimatedPositionedContainer({
    @required this.top,
    @required this.left,
    @required this.height,
    @required this.width,
    @required this.decoration,
    this.hasFocus,
    Curve curve = Curves.easeOutCubic,
    Key key,
  }) : super(
          key: key,
          curve: curve,
          duration: const Duration(milliseconds: 100),
        );

  final bool hasFocus;
  final double top;
  final double left;
  final double height;
  final double width;
  final BoxDecoration decoration;

  @override
  _AnimatedPositionedContainerState createState() =>
      _AnimatedPositionedContainerState();
}

class _AnimatedPositionedContainerState
    extends ImplicitlyAnimatedWidgetState<AnimatedPositionedContainer> {
  Tween<double> _top;
  Tween<double> _left;
  Tween<double> _height;
  Tween<double> _width;
  DecorationTween _decoration;

  @override
  Widget build(BuildContext context) {
    if (!widget.hasFocus) {
      return SizedBox.shrink();
    }
    return Positioned(
      top: _top?.evaluate(animation),
      left: _left?.evaluate(animation),
      child: IgnorePointer(
        child: Container(
          height: _height?.evaluate(animation),
          width: _width?.evaluate(animation),
          decoration: _decoration?.evaluate(animation),
        ),
      ),
    );
  }

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _top = visitor(_top, widget.top,
            (dynamic value) => Tween<double>(begin: value as double))
        as Tween<double>;
    _left = visitor(_left, widget.left,
            (dynamic value) => Tween<double>(begin: value as double))
        as Tween<double>;
    _height = visitor(_height, widget.height,
            (dynamic value) => Tween<double>(begin: value as double))
        as Tween<double>;
    _width = visitor(_width, widget.width,
            (dynamic value) => Tween<double>(begin: value as double))
        as Tween<double>;
    _decoration = visitor(_decoration, widget.decoration,
            (dynamic value) => DecorationTween(begin: value as Decoration))
        as DecorationTween;
  }
}
