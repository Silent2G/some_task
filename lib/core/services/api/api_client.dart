import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:ss_task/core/models/album.dart';
import 'package:ss_task/core/models/photo.dart';
import 'package:ss_task/core/models/user.dart';


part 'api_client.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class ApiClient {
  factory ApiClient(Dio dio) {
    dio.options = BaseOptions(
        baseUrl: "https://jsonplaceholder.typicode.com/",
        responseType: ResponseType.plain,
        receiveTimeout: 5000,
        connectTimeout: 15000,
        headers: {
          HttpHeaders.userAgentHeader: "dio",
          "Connection": "keep-alive",
        });
    dio.options.headers["Content-Type"] = "application/json";
    return _ApiClient(dio);
  }

  @GET("users")
  Future<List<User>> getUsers();

  @GET("albums")
  Future<List<Album>> getAlbums(@Query("userId") int userId);

  @GET("photos")
  Future<List<Photo>> getPhotos(@Query("albumId") int albumId);
}
