class VideoModel {
  final String id;
  final String title;

  VideoModel({
    required this.id,
    required this.title,
  });

  @override
  String toString() {
    return "id: $id, title: $title";
  }
}
