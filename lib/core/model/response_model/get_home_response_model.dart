// To parse this JSON data, do
//
//     final getHomeResponseModel = getHomeResponseModelFromJson(jsonString);

import 'dart:convert';

GetHomeResponseModel getHomeResponseModelFromJson(String str) =>
    GetHomeResponseModel.fromJson(json.decode(str));

String getHomeResponseModelToJson(GetHomeResponseModel data) =>
    json.encode(data.toJson());

class GetHomeResponseModel {
  final int? page;
  final int? limit;
  final int? totalResults;
  final int? totalPages;
  final List<PostResult>? results;

  GetHomeResponseModel({
    this.page,
    this.limit,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory GetHomeResponseModel.fromJson(Map<String, dynamic> json) =>
      GetHomeResponseModel(
        page: json["page"].runtimeType == String
            ? int.parse(json["page"])
            : json["page"],
        limit: json["limit"].runtimeType == String
            ? int.parse(json["limit"])
            : json["limit"],
        totalResults: json["totalResults"],
        totalPages: json["totalPages"],
        results: json["results"] == null
            ? []
            : List<PostResult>.from(
                json["results"]!.map((x) => PostResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "limit": limit,
        "totalResults": totalResults,
        "totalPages": totalPages,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class PostResult {
  final String? id;
  final DateTime? createdAt;
  String? description;
  String? healthTopicCategoryId;
  List<String>? healthTopicIds;
  String? title;
  final String? type;
  final List<Image>? images;
  final List<Image>? videos;
  final ResultUser? user;
  List<TagUser>? tagUsers;
  final List<Comment>? comments;
  final int? replyCount;
  final int? likeCount;
  final UserLike? userLike;
  final Map<String, int>? likeCountsTypeWise;

  PostResult(
      {this.id,
      this.createdAt,
      this.description,
      this.healthTopicCategoryId,
      this.healthTopicIds,
      this.title,
      this.type,
      this.images,
      this.videos,
      this.user,
      this.tagUsers,
      this.comments,
      this.replyCount,
      this.likeCount,
      this.userLike,
      this.likeCountsTypeWise});

  factory PostResult.fromJson(Map<String, dynamic> json) => PostResult(
        id: json["_id"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        description: json["description"],
        healthTopicCategoryId: json["healthTopicCategoryId"],
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<String>.from(json["healthTopicIds"]!.map((x) => x)),
        title: json["title"],
        type: json["type"],
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        videos: json["videos"] == null
            ? []
            : List<Image>.from(json["videos"]!.map((x) => Image.fromJson(x))),
        user: json["user"] == null ? null : ResultUser.fromJson(json["user"]),
        tagUsers: json["tagUsers"] == null
            ? []
            : List<TagUser>.from(
                json["tagUsers"]!.map((x) => TagUser.fromJson(x))),
        comments: json["comments"] == null
            ? []
            : List<Comment>.from(
                json["comments"]!.map((x) => Comment.fromJson(x))),
        replyCount: json["replyCount"],
        likeCount: json["likeCount"],
        userLike: json["userLike"] == null
            ? null
            : UserLike.fromJson(json["userLike"]),
        likeCountsTypeWise: Map.from(json["likeCountsTypeWise"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "createdAt": createdAt?.toIso8601String(),
        "description": description,
        "healthTopicCategoryId": healthTopicCategoryId,
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<dynamic>.from(healthTopicIds!.map((x) => x)),
        "title": title,
        "type": type,
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "videos": videos == null
            ? []
            : List<dynamic>.from(videos!.map((x) => x.toJson())),
        "user": user?.toJson(),
        "tagUsers": tagUsers == null
            ? []
            : List<dynamic>.from(tagUsers!.map((x) => x.toJson())),
        "comments": comments == null
            ? []
            : List<dynamic>.from(comments!.map((x) => x.toJson())),
        "replyCount": replyCount,
        "likeCount": likeCount,
        "userLike": userLike?.toJson(),
        "likeCountsTypeWise": Map.from(likeCountsTypeWise!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

class Comment {
  final String? id;
  final String? comment;
  final CommentUser? user;
  final DateTime? createdAt;

  Comment({
    this.id,
    this.comment,
    this.user,
    this.createdAt,
  });

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["_id"],
        comment: json["comment"],
        user: json["user"] == null ? null : CommentUser.fromJson(json["user"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "comment": comment,
        "user": user?.toJson(),
        "createdAt": createdAt?.toIso8601String(),
      };
}

class CommentUser {
  final String? name;
  final String? profileImage;

  CommentUser({
    this.name,
    this.profileImage,
  });

  factory CommentUser.fromJson(Map<String, dynamic> json) => CommentUser(
        name: json["name"],
        profileImage: json["profileImage"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "profileImage": profileImage,
      };
}

class Image {
  final String? fileUrl;
  final int? order;

  Image({
    this.fileUrl,
    this.order,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        fileUrl: json["fileURL"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "fileURL": fileUrl,
        "order": order,
      };
}

class TagUser {
  final String? id;
  final String? name;

  TagUser({
    this.id,
    this.name,
  });

  factory TagUser.fromJson(Map<String, dynamic> json) => TagUser(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
      };
}

class ResultUser {
  final String? id;
  final String? username;
  final String? name;
  final bool? isHealthPractitioner;
  final bool? isSponsor;
  final String? profileImage;
  final bool? isFollowing;

  ResultUser({
    this.id,
    this.username,
    this.name,
    this.isHealthPractitioner,
    this.isSponsor,
    this.profileImage,
    this.isFollowing,
  });

  factory ResultUser.fromJson(Map<String, dynamic> json) => ResultUser(
        id: json["_id"],
        username: json["username"],
        name: json["name"],
        isHealthPractitioner: json["isHealthPractitioner"],
        isSponsor: json["isSponsor"],
        profileImage: json["profileImage"],
        isFollowing: json["isFollowing"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "username": username,
        "name": name,
        "isHealthPractitioner": isHealthPractitioner,
        "isSponsor": isSponsor,
        "profileImage": profileImage,
        "isFollowing": isFollowing,
      };
}

class UserLike {
  bool? isLiked;
  String? likeId;

  UserLike({
    this.isLiked,
    this.likeId,
  });

  factory UserLike.fromJson(Map<String, dynamic> json) => UserLike(
        isLiked: json["isLiked"],
        likeId: json["likeId"],
      );

  Map<String, dynamic> toJson() => {
        "isLiked": isLiked,
        "likeId": likeId,
      };
}
