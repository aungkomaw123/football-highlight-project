class HighLightOb {
  HighLightOb({
    required this.title,
    required this.embed,
    required this.url,
    required this.thumbnail,
    required this.date,
    required this.side1,
    required this.side2,
    required this.competition,
    required this.videos,
  });
  late final String title;
  late final String embed;
  late final String url;
  late final String thumbnail;
  late final String date;
  late final Side1 side1;
  late final Side2 side2;
  late final Competition competition;
  late final List<Videos> videos;

  HighLightOb.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    embed = json['embed'];
    url = json['url'];
    thumbnail = json['thumbnail'];
    date = json['date'];
    side1 = Side1.fromJson(json['side1']);
    side2 = Side2.fromJson(json['side2']);
    competition = Competition.fromJson(json['competition']);
    videos = List.from(json['videos']).map((e) => Videos.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['embed'] = embed;
    _data['url'] = url;
    _data['thumbnail'] = thumbnail;
    _data['date'] = date;
    _data['side1'] = side1.toJson();
    _data['side2'] = side2.toJson();
    _data['competition'] = competition.toJson();
    _data['videos'] = videos.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Side1 {
  Side1({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Side1.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Side2 {
  Side2({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Side2.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Competition {
  Competition({
    required this.name,
    required this.id,
    required this.url,
  });
  late final String name;
  late final int id;
  late final String url;

  Competition.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['id'] = id;
    _data['url'] = url;
    return _data;
  }
}

class Videos {
  Videos({
    required this.title,
    required this.embed,
  });
  late final String title;
  late final String embed;

  Videos.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    embed = json['embed'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['embed'] = embed;
    return _data;
  }
}
