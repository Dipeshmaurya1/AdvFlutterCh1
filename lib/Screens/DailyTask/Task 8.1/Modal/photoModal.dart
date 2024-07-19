class Photo {
  late int id;
  late String title, url, thumbnailUrl;

  Photo(
      {required this.id,
      required this.thumbnailUrl,
      required this.title,
      required this.url});

  factory Photo.fromMap(Map m1) {
    return Photo(
        id: m1['id'],
        thumbnailUrl: m1['thumbnailUrl'],
        title: m1['title'],
        url: m1['url']);
  }
}
