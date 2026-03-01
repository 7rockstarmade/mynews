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

  Map<String, dynamic> toMap() => {
    'title': title,
    'url': url,
    'sourceName': sourceName,
    'publishedAt': publishedAt.toIso8601String(),
    'author': author,
    'description': description,
    'imageUrl': imageUrl,
    'content': content,
  };

  factory Article.fromMap(Map<dynamic, dynamic> map) => Article(
    title: map['title'] as String,
    url: map['url'] as String,
    sourceName: map['sourceName'] as String,
    publishedAt: DateTime.parse(map['publishedAt'] as String),
    author: map['author'] as String?,
    description: map['description'] as String?,
    imageUrl: map['imageUrl'] as String?,
    content: map['content'] as String?,
  );
}
