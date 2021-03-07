import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ss_task/ui/shared/app_colors.dart';

class CustomBottomNavigationItem extends StatefulWidget {
  final int index;
  final int selectedIndex;
  final String iconPath;
  final String label;
  final Function(int) onChange;

  CustomBottomNavigationItem(
      {@required this.index,
      @required this.selectedIndex,
      @required this.iconPath,
      @required this.label,
      @required this.onChange});

  @override
  State createState() {
    return CustomBottomNavigationItemState();
  }
}

class CustomBottomNavigationItemState
    extends State<CustomBottomNavigationItem> {
  void _changeIndex(int index) {
    if (widget.onChange != null) {
      widget.onChange(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      child: InkWell(
        radius: 80,
        onTap: () {
          _changeIndex(widget.index);
        },
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 3),
                child: SvgPicture.asset(
                  widget.iconPath,
                  width: 40.w,
                  height: 40.h,
                  color: widget.selectedIndex == widget.index
                      ? AppColors.BLACK
                      : AppColors.GREY,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                child: AnimatedDefaultTextStyle(
                  style: widget.selectedIndex == widget.index
                      ? TextStyle(
                          fontSize: 22.sp,
                          fontStyle: FontStyle.normal,
                          color: AppColors.BLACK,
                          fontWeight: FontWeight.w700)
                      : TextStyle(
                          fontSize: 20.sp,
                          fontStyle: FontStyle.normal,
                          color: AppColors.BLACK,
                          fontWeight: FontWeight.w400),
                  duration: const Duration(milliseconds: 50),
                  child: Text(widget.label),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
