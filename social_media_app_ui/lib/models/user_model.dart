class User {
  final String? profileImageUrl;
  final String? backgroundImageUrl;
  final String? name;
  final int? following;
  final int? followers;
  final List<dynamic>? posts;
  final List<dynamic>? favorites;

  User({
    this.profileImageUrl,
    this.backgroundImageUrl,
    this.name,
    this.following,
    this.followers,
    this.posts,
    this.favorites,
  });
}
