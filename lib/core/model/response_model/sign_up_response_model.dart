class SignUpResponseModel {
  final String? userId;
  final String? name;
  final bool? isNew;

  SignUpResponseModel({
    this.userId,
    this.name,
    this.isNew,
  });

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      SignUpResponseModel(
        userId: json["userId"],
        name: json["name"],
        isNew: json["isNew"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "isNew": isNew,
      };
}
