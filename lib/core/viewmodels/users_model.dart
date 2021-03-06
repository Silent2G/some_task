import 'package:ss_task/core/enums/viewstate.dart';
import 'package:ss_task/core/models/user.dart';
import 'package:ss_task/core/services/api/networks/get_users.dart';
import 'package:ss_task/core/viewmodels/core/base_model.dart';

class UsersModel extends BaseModel {
  List<User> users;

  void loadUsers() async {
    setState(ViewState.Busy);
    users = (await GetUsers().getData()).data;
    setState(ViewState.Idle);
  }
}
