import 'package:dio/dio.dart' hide Headers;

import 'package:logger/logger.dart';
import 'package:ss_task/core/services/api/api_client.dart';

class BaseNetwork {
  Dio dio;
  ApiClient apiClient;
  Logger logger;

  BaseNetwork() {
    dio = new Dio();
    apiClient = new ApiClient(dio);
    logger = Logger();
  }
}
