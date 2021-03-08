import 'package:flutter_test/flutter_test.dart';
import 'package:ss_task/core/models/user.dart';
import 'package:ss_task/core/services/api/networks/get_users.dart';

void main() {
  test("Testing the get users network call", () async {
    List<User> users = (await GetUsers().getData()).data;
    expect(users != null && users.isNotEmpty, true);
  });
}