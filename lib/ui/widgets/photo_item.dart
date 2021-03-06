import 'package:flutter/material.dart';
import 'package:ss_task/core/models/photo.dart';
import 'package:ss_task/ui/widgets/avatar_widget.dart';
import 'package:ss_task/ui/widgets/shadow_wrap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ss_task/ui/widgets/text.dart';

class PhotoItem extends StatelessWidget {
  final Photo photo;

  PhotoItem({Key key, @required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowWrap(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          photo.url != null
              ? Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: AvatarWidget(
                    key: UniqueKey(),
                    url: photo.url,
                  ),
                )
              : Container(),
          SizedBox(
            width: 20.w,
          ),
          Expanded(
            child: TitleText(
              photo.title,
              textAlign: TextAlign.start,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
