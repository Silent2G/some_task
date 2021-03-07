import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ss_task/core/enums/viewstate.dart';
import 'package:ss_task/core/viewmodels/albums_model.dart';
import 'package:ss_task/ui/shared/app_colors.dart';
import 'package:ss_task/ui/views/core/base_view.dart';
import 'package:ss_task/ui/widgets/album_item.dart';

class AlbumsView extends StatefulWidget {
  final AlbumsViewArguments arguments;

  AlbumsView({@required this.arguments});

  @override
  _AlbumsViewState createState() => _AlbumsViewState();
}

class _AlbumsViewState extends State<AlbumsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AlbumsModel>(
      onModelReady: (model) => model.loadUsers(widget.arguments.userId),
      builder: (BuildContext context, AlbumsModel model, Widget child) {
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
                  itemCount: model.albums.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.only(
                          left: 30.w,
                          right: 30.w,
                          top: index == 0 ? 30.h : 0,
                          bottom:
                              index == model.albums.length - 1 ? 50.h : 20.h),
                      child: AlbumItem(
                        key: UniqueKey(),
                        album: model.albums[index],
                      ),
                    );
                  }),
        ));
      },
    );
  }
}

class AlbumsViewArguments {
  final int userId;

  AlbumsViewArguments({@required this.userId});
}
