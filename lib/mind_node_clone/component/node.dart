import 'package:flutter/material.dart';
import 'package:flutter_experiment/mind_node_clone/component/component.dart';

class RootNode extends StatefulWidget {
  const RootNode({
    @required this.enable,
    @required this.onTap,
    @required this.onAdd,
    Key key,
  }) : super(key: key);

  final bool enable;
  final VoidCallback onTap;
  final VoidCallback onAdd;

  @override
  _RootNodeState createState() => _RootNodeState();
}

class _RootNodeState extends State<RootNode> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseHoveringListener(
      onChanged: (hovering) {
        setState(() {
          _hovering = hovering;
        });
      },
      child: IntrinsicHeight(
        child: IntrinsicWidth(
          child: Stack(
            children: [
              GestureDetector(
                onTap: widget.onTap,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text('Node'),
                ),
              ),
              if (_hovering)
                Positioned(
                  top: -10,
                  right: -10,
                  child: IconButton(
                    onPressed: () {
                      widget.onAdd?.call();
                    },
                    icon: Icon(Icons.add),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
