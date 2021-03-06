import 'package:flutter/material.dart';
import 'package:ss_task/core/viewmodels/core/base_model.dart';
import 'package:ss_task/ui/views/more/more_view.dart';
import 'package:ss_task/ui/views/favorites/favorites_view.dart';
import 'package:ss_task/ui/views/discounts/discounts_view.dart';
import 'package:ss_task/ui/views/users/users_view.dart';

class HomeModel extends BaseModel {
  List<Widget> items = [
    UsersView(),
    DiscountsView(),
    FavoritesView(),
    MoreView()
  ];

  int tabSelectedIndex = 0;

}