class FeedModel {
  String? title;
  int? date;
  // final String imageUrl;
  double? totalWeight;
  String? review;

  FeedModel({
    this.title,
    this.date,
    // required this.imageUrl,
    this.totalWeight,
    this.review,
  });

  FeedModel.fromJson(Map<String, Object?> json)
      : this(
          date: json['date'] as int,
          review: json['review'] as String,
          title: json['title'] as String,
          totalWeight: json['totalWeight'] as double,
        );

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'date': date,
      // 'imageUrl': imageUrl,
      'totalWeight': totalWeight,
      'review': review,
    };
  }
}
