import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String index;

  const DetailPage({
    @required this.index,
    Key key,
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((value) {
      if (!mounted) {
        return;
      }
      setState(() {
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.index),
      ),
      body: Center(
        child: _loading ? Text('loading......') : Text('Finished!!!!'),
      ),
    );
  }
}
