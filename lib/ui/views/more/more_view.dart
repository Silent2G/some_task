import 'package:flutter/material.dart';
import 'package:ss_task/core/viewmodels/screen_four_model.dart';
import 'package:ss_task/ui/views/core/base_view.dart';
import 'package:ss_task/ui/widgets/text.dart';

class MoreView extends StatefulWidget {
  @override
  _MoreViewState createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ScreenFourModel>(
      builder: (BuildContext context, ScreenFourModel model, Widget child) {
        return Scaffold(
          body: Center(
            child: TitleText(
              "More",
              size: 35,
            ),
          ),
        );
      },
    );
  }
}
