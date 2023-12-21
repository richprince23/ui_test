// post model
class Post {
  final int likeCount;
  final int commentCount;
  final String author;
  final String subred;
  final String body;
  final int hours;
  final bool isAvatarIcon;

  Post({
    required this.likeCount,
    required this.commentCount,
    required this.author,
    required this.subred,
    required this.body,
    required this.hours,
    required this.isAvatarIcon,
  });
}

