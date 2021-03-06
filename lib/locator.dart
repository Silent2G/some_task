import 'package:get_it/get_it.dart';
import 'package:ss_task/core/viewmodels/albums_model.dart';
import 'package:ss_task/core/viewmodels/home_model.dart';
import 'package:ss_task/core/viewmodels/photos_model.dart';
import 'package:ss_task/core/viewmodels/screen_four_model.dart';
import 'package:ss_task/core/viewmodels/screen_three_model.dart';
import 'package:ss_task/core/viewmodels/screen_two_model.dart';
import 'package:ss_task/core/viewmodels/users_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => HomeModel());
  locator.registerLazySingleton(() => UsersModel());
  locator.registerLazySingleton(() => AlbumsModel());
  locator.registerLazySingleton(() => PhotosModel());
  locator.registerLazySingleton(() => ScreenTwoModel());
  locator.registerLazySingleton(() => ScreenThreeModel());
  locator.registerLazySingleton(() => ScreenFourModel());
}
