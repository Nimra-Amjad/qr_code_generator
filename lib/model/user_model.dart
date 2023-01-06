class UserModel {
  String? name;
  String? cnic;
  String? meetto;
  String? meettime;

  UserModel({
    this.name,
    this.cnic,
    this.meetto,
    this.meettime,
  });

  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'],
      cnic: json['cnic'],
      meetto: json['meeto'],
      meettime: json['meettime']);

  Map<String, dynamic> toJson() =>
      {'name': name, 'cnic': cnic, 'meetto': meetto, 'meettime': meettime};
}
