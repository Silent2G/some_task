import 'package:ss_task/core/enums/viewstate.dart';
import 'package:ss_task/core/models/photo.dart';
import 'package:ss_task/core/services/api/networks/get_photos.dart';
import 'package:ss_task/core/viewmodels/core/base_model.dart';

class PhotosModel extends BaseModel {
  List<Photo> photos;

  void loadUsers(int albumId) async {
    setState(ViewState.Busy);
    photos = (await GetPhotos().getData(albumId)).data;
    setState(ViewState.Idle);
  }
}