import 'package:flutter/material.dart';
import 'package:ss_task/core/models/album.dart';
import 'package:ss_task/ui/views/photos/photos_view.dart';
import 'package:ss_task/ui/widgets/shadow_wrap.dart';
import 'package:ss_task/ui/widgets/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      child: ShadowWrap(
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
