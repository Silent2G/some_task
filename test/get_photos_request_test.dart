import 'package:flutter_test/flutter_test.dart';
import 'package:ss_task/core/models/photo.dart';
import 'package:ss_task/core/services/api/networks/get_photos.dart';

void main() {
  test("Testing the get photos network call", () async {
    List<Photo> photos = (await GetPhotos().getData(1)).data;
    expect(photos != null && photos.isNotEmpty, true);
  });
}