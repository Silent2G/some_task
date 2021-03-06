import 'package:flutter/material.dart';
import 'package:ss_task/core/viewmodels/screen_two_model.dart';
import 'package:ss_task/ui/views/core/base_view.dart';
import 'package:ss_task/ui/widgets/text.dart';

class DiscountsView extends StatefulWidget {
  @override
  _DiscountsViewState createState() => _DiscountsViewState();
}

class _DiscountsViewState extends State<DiscountsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ScreenTwoModel>(
      builder: (BuildContext context, ScreenTwoModel model, Widget child) {
        return Scaffold(
          body: Center(
            child: TitleText("Discounts"),
          ),
        );
      },
    );
  }
}
