import 'package:flutter/material.dart';
import 'package:ss_task/core/enums/viewstate.dart';
import 'package:ss_task/core/viewmodels/users_model.dart';
import 'package:ss_task/ui/shared/app_colors.dart';
import 'package:ss_task/ui/views/core/base_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ss_task/ui/widgets/user_item.dart';

class UsersView extends StatefulWidget {
  @override
  _UsersViewState createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<UsersModel>(
      onModelReady: (model) => model.loadUsers(),
      builder: (BuildContext context, UsersModel model, Widget child) {
        return Scaffold(
          backgroundColor: AppColors.BLACK,
            body: SafeArea(
          child: model.state == ViewState.Busy
              ? Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: model.users.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.only(
                          left: 30.w,
                          right: 30.w,
                          top: index == 0 ? 30.h : 0,
                          bottom:
                              index == model.users.length - 1 ? 30.h : 20.h),
                      child: UserItem(
                        key: UniqueKey(),
                        user: model.users[index],
                      ),
                    );
                  }),
        ));
      },
    );
  }
}
