import 'package:flutter/material.dart';
import 'package:ss_task/core/models/user.dart';
import 'package:ss_task/ui/views/albums/albums_view.dart';
import 'package:ss_task/ui/widgets/shadow_wrap.dart';
import 'package:ss_task/ui/widgets/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserItem extends StatelessWidget {
  final User user;

  UserItem({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/albums",
            arguments: AlbumsViewArguments(userId: user.id));
      },
      child: ShadowWrap(
          child: Padding(
        padding: EdgeInsets.only(left: 50.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              child: TitleText(
                user.name,
                size: 30,
              ),
            ),
            Container(
              child: TitleText(
                user.username,
                size: 30,
              ),
            ),
            Container(
              child: TitleText(
                user.email,
                size: 30,
              ),
            ),
            Container(
              child: TitleText(
                user.phone,
                size: 30,
              ),
            ),
            Container(
              child: TitleText(
                user.address.street,
                size: 30,
              ),
            ),
            Container(
              child: TitleText(
                user.website,
                size: 30,
              ),
            ),
            Container(
              child: TitleText(
                user.company.name,
                size: 30,
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      )),
    );
  }
}
