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

  factory Movies.fromJson(Map<String, dynamic> json) {
  final String id = json['id'] as String;
  final String name = json['name'] as String;
  final String description = json['description'] as String;
  final num priceNumber = json['price'] as num;
  final double price = priceNumber.toDouble();
  final String imagePath = json['imagePath'] as String;
  final String ageRating = json['ageRating'] as String;
  final String showTime = json['showTime'] as String;

  return Movies(
    id: id,
    name: name,
    description: description,
    price: price,
    imagePath: imagePath,
    ageRating: ageRating,
    showTime: showTime,
  );
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = <String, dynamic>{
    'id': id,
    'name': name,
    'description': description,
    'price': price,
    'imagePath': imagePath,
    'ageRating': ageRating,
    'showTime': showTime,
  };

  return data;
}

  bool get isChildFriendly {
    if (ageRating == 'U' || ageRating == 'PG') {
      return true;
    } else {
      return false;
    }
  }

  bool get isAdultOnly {
    if (ageRating == '18') {
      return true;
    } else {
      return false;
    }
  }
}
