import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ss_task/core/viewmodels/home_model.dart';
import 'package:ss_task/ui/shared/app_colors.dart';
import 'package:ss_task/ui/views/core/base_view.dart';
import 'package:ss_task/ui/views/home/widgets/bottom_navigation_painter.dart';
import 'package:ss_task/ui/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BaseView<HomeModel>(
      builder: (BuildContext context, HomeModel model, Widget child) {
        return Scaffold(
            body: _buildPage(model),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              elevation: 0,
              disabledElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
              backgroundColor: AppColors.BLACK,
              onPressed: () {
                print("click test");
              },
              child: Icon(Icons.pause),
            ),
            bottomNavigationBar: Stack(
              children: [
                CustomPaint(
                  size: Size(width, 80.h),
                  painter: BottomNavigationPainter(),
                ),
                CustomBottomNavigationBar(
                  currentIndex: model.tabSelectedIndex,
                  onChange: (int value) {
                    setState(() {
                      model.tabSelectedIndex = value;
                    });
                  },
                ),
              ],
            ));
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
