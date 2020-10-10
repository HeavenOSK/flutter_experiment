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
  var currentPageValue = 0.0;
  List<int> indexes;

  @override
  void initState() {
    super.initState();
    controller = PageController(
        // initialPage: widget.currentIndex,
        );
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
      });
      if (controller.page >= 1) {
        // Future.delayed(Duration(milliseconds: 400)).then((value) {
        setState(() {
          indexes.removeRange(0, controller.page.floor());
          controller.jumpTo(0);
        });
        // });
      }
    });
    indexes = List.generate(10, (index) => index);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      allowImplicitScrolling: true,
      controller: controller,
      onPageChanged: (index) {
        // widget.onPaging(index);
        setState(() {});
      },
      itemCount: indexes.length,
      itemBuilder: (context, index) {
        final k = indexes[index];
        print(index);
        if (index == currentPageValue.floor()) {
          return Scaffold(
            body: Center(
              child: FractionallySizedBox(
                widthFactor: 0.9,
                heightFactor: 0.9,
                child: DetailPage(
                  index: k.toString(),
                ),
              ),
            ),
          );
        } else if (index == currentPageValue.floor() + 1) {
          return Scaffold(
            body: Center(
              child: FractionallySizedBox(
                widthFactor: 0.9,
                heightFactor: 0.9,
                child: DetailPage(
                  index: k.toString(),
                ),
              ),
            ),
          );
        } else {
          return Scaffold(
            body: Center(
              child: FractionallySizedBox(
                widthFactor: 0.9,
                heightFactor: 0.9,
                child: DetailPage(
                  index: k.toString(),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
