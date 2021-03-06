import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ss_task/core/viewmodels/home_model.dart';
import 'package:ss_task/ui/shared/app_colors.dart';
import 'package:ss_task/ui/views/core/base_view.dart';
import 'package:ss_task/ui/widgets/custom_bottom_navigation_bar.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      builder: (BuildContext context, HomeModel model, Widget child) {
        return Scaffold(
          backgroundColor: AppColors.WHITE,
          body: _buildPage(model),
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: model.tabSelectedIndex,
            onChange: (int value) {
              setState(() {
                model.tabSelectedIndex = value;
              });
            },
          ),
        );
      },
    );
  }

  Widget _buildPage(HomeModel model) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
      child: IndexedStack(index: model.tabSelectedIndex, children: model.items),
    );
  }
}
