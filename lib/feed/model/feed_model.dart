class FeedModel {
  final String title;
  final int date;
  final String imageUrl;
  final double totalWeight;
  final String review;

  FeedModel({
    required this.title,
    required this.date,
    required this.imageUrl,
    required this.totalWeight,
    required this.review,
  });
  FeedModel.fromJson({
    required Map<String, dynamic> json,
  })  : title = json['title'],
        date = json['date'] as int,
        imageUrl = json['imageUrl'],
        totalWeight = json['date'] as double,
        review = json['review'];

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'date': date,
      'imageUrl': imageUrl,
      'totalWeight': totalWeight,
      'review': review,
    };
  }
}
