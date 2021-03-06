import 'package:flutter/material.dart';
import 'package:ss_task/ui/shared/app_colors.dart';
import 'package:ss_task/ui/widgets/custom_bottom_navigation_item.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Function(int) onChange;
  final int currentIndex;

  CustomBottomNavigationBar({
    this.currentIndex,
    this.onChange,
  });

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.only(top: 10.h),
        height: 120.h,
        width: width,
        color: AppColors.WHITE,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomBottomNavigationItem(
              index: 0,
              selectedIndex: widget.currentIndex,
              iconPath: "assets/images/svg/ic_home_nav.svg",
              label: "HOME",
              onChange: widget.onChange,
            ),
            CustomBottomNavigationItem(
              index: 1,
              selectedIndex: widget.currentIndex,
              iconPath: "assets/images/svg/ic_discounts_nav.svg",
              label: "DISCOUNTS",
              onChange: widget.onChange,
            ),
            CustomBottomNavigationItem(
              index: 2,
              selectedIndex: widget.currentIndex,
              iconPath: "assets/images/svg/ic_favorites_nav.svg",
              label: "FAVORITES",
              onChange: widget.onChange,
            ),
            CustomBottomNavigationItem(
              index: 3,
              selectedIndex: widget.currentIndex,
              iconPath: "assets/images/svg/ic_more_nav.svg",
              label: "MORE",
              onChange: widget.onChange,
            ),
          ],
        ));
  }
}
