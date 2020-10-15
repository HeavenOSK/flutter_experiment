import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

typedef _RegionChangedCallback = void Function(
  Offset position,
  Size size,
);

typedef MouseEnterCallback = void Function(
  Offset targetPosition,
  Size targetSize,
);

class MouseModifierRegion extends StatefulWidget {
  const MouseModifierRegion({
    @required this.child,
    this.onEnter,
    this.onExit,
    Key key,
  }) : super(key: key);

  final Widget child;
  final MouseEnterCallback onEnter;
  final VoidCallback onExit;

  @override
  _MouseModifierRegionState createState() => _MouseModifierRegionState();
}

class _MouseModifierRegionState extends State<MouseModifierRegion> {
  Offset _position;
  Size _size;

  bool get _laidOut => _position != null && _size != null;

  @override
  Widget build(BuildContext context) {
    return _RegionListenableBox(
      onRegionChanged: (pos, size) {
        _position = pos;
        _size = size;
      },
      child: MouseRegion(
        onEnter: (_) {
          if (_laidOut) widget?.onEnter(_position, _size);
        },
        onExit: (_) {
          widget.onExit?.call();
        },
        child: widget.child,
      ),
    );
  }
}

class _RegionListenableBox extends SingleChildRenderObjectWidget {
  const _RegionListenableBox({
    Key key,
    Widget child,
    @required this.onRegionChanged,
  })  : assert(onRegionChanged != null),
        super(key: key, child: child);

  final _RegionChangedCallback onRegionChanged;

  @override
  _SizeListenableRenderObject createRenderObject(BuildContext context) {
    return _SizeListenableRenderObject(onRegionChanged: onRegionChanged);
  }
}

class _SizeListenableRenderObject extends RenderProxyBox {
  _SizeListenableRenderObject({
    @required this.onRegionChanged,
  })  : assert(onRegionChanged != null),
        super(null);

  final _RegionChangedCallback onRegionChanged;

  Size _oldSize;
  Offset _oldPosition;

  @override
  void performLayout() {
    super.performLayout();
    final pos = this.localToGlobal(Offset.zero);
    final size = this.size;

    if (size != _oldSize || pos != _oldPosition) {
      _oldSize = size;
      _oldPosition = pos;
      onRegionChanged?.call(pos, size);
    }
  }
}
