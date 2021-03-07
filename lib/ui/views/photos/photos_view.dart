import 'package:flutter/material.dart';
import 'package:ss_task/core/enums/viewstate.dart';
import 'package:ss_task/core/viewmodels/photos_model.dart';
import 'package:ss_task/ui/shared/app_colors.dart';
import 'package:ss_task/ui/views/core/base_view.dart';
import 'package:ss_task/ui/widgets/photo_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotosView extends StatefulWidget {
  final PhotosViewArguments arguments;

  PhotosView({@required this.arguments});

  @override
  _PhotosViewState createState() => _PhotosViewState();
}

class _PhotosViewState extends State<PhotosView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PhotosModel>(
      onModelReady: (model) => model.loadUsers(widget.arguments.albumId),
      builder: (BuildContext context, PhotosModel model, Widget child) {
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
                    itemCount: model.photos.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.only(
                            left: 30.w,
                            right: 30.w,
                            top: index == 0 ? 30.h : 0,
                            bottom:
                                index == model.photos.length - 1 ? 50.h : 20.h),
                        child: PhotoItem(
                          key: UniqueKey(),
                          photo: model.photos[index],
                        ),
                      );
                    }),
          ),
        );
      },
    );
  }
}

class PhotosViewArguments {
  final int albumId;

  PhotosViewArguments({@required this.albumId});
}
