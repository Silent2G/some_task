import 'package:ss_task/core/models/album.dart';
import 'package:ss_task/core/services/api/core/base_modal.dart';
import 'package:ss_task/core/services/api/core/base_network.dart';
import 'package:ss_task/core/services/api/core/get_data_parameter.dart';
import 'package:ss_task/core/services/api/core/server_error.dart';

class GetAlbums extends BaseNetwork
    implements GetDataParameter<Future<BaseApiModel<List<Album>>>, int> {
  @override
  Future<BaseApiModel<List<Album>>> getData(int userId) async {
    List<Album> response;
    try {
      response = await apiClient.getAlbums(userId);
    } catch (error, stacktrace) {
      logger.e("Exception occured: $error\nstackTrace:\n$stacktrace");
      return BaseApiModel()..setException(ServerError.withError(error: error));
    }
    return BaseApiModel()..data = response;
  }
}
