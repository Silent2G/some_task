import 'package:flutter_test/flutter_test.dart';
import 'package:ss_task/core/models/album.dart';
import 'package:ss_task/core/services/api/networks/get_albums.dart';

void main() {
  test("Testing the get albums network call", () async {
    List<Album> albums = (await GetAlbums().getData(1)).data;
    expect(albums != null && albums.isNotEmpty, true);
  });
}
