
import 'package:social_media_app_ui/model/user_model.dart';

class Post {
  final String imageUrl;
  final User author;
  final String title;
  final String location;
  final int likes;
  final int comments;

  Post({
    required this.author,
    required this.comments,
    required this.likes,
    required this.imageUrl,
    required this.location,
    required this.title,
  });
}