import 'package:ss_task/core/models/user.dart';
import 'package:ss_task/core/services/api/core/base_modal.dart';
import 'package:ss_task/core/services/api/core/base_network.dart';
import 'package:ss_task/core/services/api/core/get_data.dart';
import 'package:ss_task/core/services/api/core/server_error.dart';

class GetUsers extends BaseNetwork
    implements GetData<Future<BaseApiModel<List<User>>>> {
  @override
  Future<BaseApiModel<List<User>>> getData() async {
    List<User> response;
    try {
      response = await apiClient.getUsers();
    } catch (error, stacktrace) {
      logger.e("Exception occured: $error\nstackTrace:\n$stacktrace");
      return BaseApiModel()..setException(ServerError.withError(error: error));
    }
    return BaseApiModel()..data = response;
  }
}
