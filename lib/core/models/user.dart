import 'package:json_annotation/json_annotation.dart';
import 'package:ss_task/core/models/address.dart';
import 'package:ss_task/core/models/company.dart';

part 'user.g.dart';

@JsonSerializable()
class User {

  @JsonKey(name: "id")
  int id;

  @JsonKey(name: "name")
  String name;

  @JsonKey(name: "username")
  String username;

  @JsonKey(name: "email")
  String email;

  @JsonKey(name: "address")
  Address address;

  @JsonKey(name: "phone")
  String phone;

  @JsonKey(name: "website")
  String website;

  @JsonKey(name: "company")
  Company company;

  User(this.id, this.name, this.username, this.email, this.address, this.phone,
      this.website, this.company);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

}