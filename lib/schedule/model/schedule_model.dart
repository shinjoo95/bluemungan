class Schedule {
  String? title;
  String? subTitle;
  String? location;
  String? date;

  Schedule({
    this.title,
    this.subTitle,
    this.location,
    this.date,
  });

  Schedule.fromJson(Map<String, Object?> json)
      : this(
          title: json['title'] as String,
          subTitle: json['subTitle'] as String,
          location: json['location'] as String,
          date: json['date'] as String,
        );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['title'] = title;
    data['subTitle'] = subTitle;
    data['location'] = location;
    data['date'] = date;

    return data;
  }
}
