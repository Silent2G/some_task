import 'package:ss_task/core/enums/viewstate.dart';
import 'package:ss_task/core/models/album.dart';
import 'package:ss_task/core/services/api/networks/get_albums.dart';
import 'package:ss_task/core/viewmodels/core/base_model.dart';

class AlbumsModel extends BaseModel {
  List<Album> albums;

  void loadUsers(int userId) async {
    setState(ViewState.Busy);
    albums = (await GetAlbums().getData(userId)).data;
    setState(ViewState.Idle);
  }
}