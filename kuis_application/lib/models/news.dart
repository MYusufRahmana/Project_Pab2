class News {
  final String name;
  final String author;
  final String title;
  final String publishedAt;

  News({
    required this.name,
    required this.author,
    required this.title,
    required this.publishedAt,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      name: json['source']['name'] as String,
      author: json['author'] as String,
      title: json['title'] as String,
      publishedAt: json['publishedAt'] as String,
    );
  }
}
