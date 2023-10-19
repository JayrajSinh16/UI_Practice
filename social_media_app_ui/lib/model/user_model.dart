
import 'package:social_media_app_ui/model/post_model.dart';

class User {
  final String? profileImageUrl;
  final String? backgroundImageUrl;
  final String? name;
  final int? following;
  final int? followers;
  final List<Post>? posts;
  final List<Post>? favorites;

  User({
    this.backgroundImageUrl,
     this.profileImageUrl,
     this.favorites,
     this.followers,
     this.following,
     this.name,
     this.posts,
  });
}