import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail_page.dart';

class DetailPager extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onPaging;

  const DetailPager({
    @required this.currentIndex,
    @required this.onPaging,
    Key key,
  }) : super(key: key);

  @override
  _DetailPagerState createState() => _DetailPagerState();
}

class _DetailPagerState extends State<DetailPager> {
  PageController controller;
  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: widget.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      allowImplicitScrolling: true,
      controller: controller,
      onPageChanged: (index) {
        widget.onPaging(index);
      },
      itemBuilder: (context, index) {
        return DetailPage(index: index.toString());
      },
    );
  }
}
