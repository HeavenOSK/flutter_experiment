import 'package:flutter/material.dart';

class RootNode extends StatelessWidget {
  const RootNode({
    @required this.enable,
    @required this.onTap,
    Key key,
  }) : super(key: key);

  final bool enable;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Text('Root Node'),
      ),
    );
  }
}
