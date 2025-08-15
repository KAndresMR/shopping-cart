class Rating {
  final int rate;
  final int count;

  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromMap(Map<String, dynamic>map) {
    return Rating(
      rate: map['rate'],
      count: map['count']
    );
  }
}