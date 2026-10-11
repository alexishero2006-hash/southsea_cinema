class Movies {
  final String id;
  final String name;
  final String description;
  final String imagePath;
  final String ageRating;
  final String? showTime;
  final double price;

  const Movies({
    required this.id,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.ageRating,
    required this.showTime,
    required this.price,
  });

  String get formattedPrice => '£${price.toStringAsFixed(2)}';
}
