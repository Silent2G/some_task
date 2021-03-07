import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ss_task/core/models/album.dart';
import 'package:ss_task/ui/shared/app_colors.dart';
import 'package:ss_task/ui/views/photos/photos_view.dart';
import 'package:ss_task/ui/widgets/text.dart';

class AlbumItem extends StatelessWidget {
  final Album album;

  AlbumItem({Key key, @required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/photos",
            arguments: PhotosViewArguments(albumId: album.id));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.LIGHT_GRAY,
          borderRadius: BorderRadius.all(Radius.circular(20.h)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: TitleText(
                album.title,
                textAlign: TextAlign.start,
                size: 30,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
