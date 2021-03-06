import 'package:ss_task/core/models/photo.dart';
import 'package:ss_task/core/services/api/core/base_modal.dart';
import 'package:ss_task/core/services/api/core/base_network.dart';
import 'package:ss_task/core/services/api/core/get_data_parameter.dart';
import 'package:ss_task/core/services/api/core/server_error.dart';

class GetPhotos extends BaseNetwork
    implements GetDataParameter<Future<BaseApiModel<List<Photo>>>, int> {
  @override
  Future<BaseApiModel<List<Photo>>> getData(int albumId) async {
    List<Photo> response;
    try {
      response = await apiClient.getPhotos(albumId);
    } catch (error, stacktrace) {
      logger.e("Exception occured: $error\nstackTrace:\n$stacktrace");
      return BaseApiModel()..setException(ServerError.withError(error: error));
    }
    return BaseApiModel()..data = response;
  }
}
