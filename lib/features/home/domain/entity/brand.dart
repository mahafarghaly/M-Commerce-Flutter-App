class Brand {
  final int? id;
  final String? title;
  final String? bodyHtml;
  final String? imageUrl;

  const Brand({
    required this.id,
    required this.title,
    this.bodyHtml,
    this.imageUrl,
  });
}