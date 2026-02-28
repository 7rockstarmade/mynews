class Article {
  Article({
    required this.title,
    required this.url,
    required this.sourceName,
    required this.publishedAt,
    this.author,
    this.description,
    this.imageUrl,
    this.content,
  });

  final String title;
  final String url;
  final String sourceName;
  final DateTime publishedAt;

  final String? author;
  final String? description;
  final String? imageUrl;
  final String? content;
}
