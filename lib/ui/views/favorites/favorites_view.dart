import 'package:flutter/material.dart';
import 'package:ss_task/core/viewmodels/screen_three_model.dart';
import 'package:ss_task/ui/views/core/base_view.dart';
import 'package:ss_task/ui/widgets/text.dart';

class FavoritesView extends StatefulWidget {
  @override
  _FavoritesViewState createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ScreenThreeModel>(
      builder: (BuildContext context, ScreenThreeModel model, Widget child) {
        return Scaffold(
          body: Center(
            child: TitleText(
              "Favorites",
              size: 35,
            ),
          ),
        );
      },
    );
  }
}
