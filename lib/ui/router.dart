import 'package:flutter/material.dart';
import 'package:ss_task/ui/views/albums/albums_view.dart';
import 'package:ss_task/ui/views/home/home_view.dart';
import 'package:ss_task/ui/views/photos/photos_view.dart';
import 'package:ss_task/ui/views/users/users_view.dart';

class AppRouter {
  AppRouter._();

  static const String home = '/';
  static const String users = '/users';
  static const String photos = '/photos';
  static const String albums = '/albums';

  static final routes = <String, WidgetBuilder>{
    home: (context) => HomeView(),
    users: (context) => UsersView(),
    photos: (context) =>
        PhotosView(arguments: ModalRoute.of(context).settings.arguments),
    albums: (context) =>
        AlbumsView(arguments: ModalRoute.of(context).settings.arguments),
  };
}
