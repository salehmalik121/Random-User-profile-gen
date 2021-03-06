class Picture {
  String large;
  Picture({
    required this.large,
  });
  factory Picture.fromjson(Map<String, dynamic> json) {
    final large = json["large"];
    return Picture(large: large);
  }
}

class Location {
  String city;

  Location({
    required this.city,
  });
  factory Location.fromjson(Map<String, dynamic> json) {
    final city = json["city"];

    return Location(city: city);
  }
}

class Name {
  String title;
  String first;
  String last;
  Name({
    required this.title,
    required this.first,
    required this.last,
  });
  factory Name.fromjson(Map<String, dynamic> json) {
    final title = json['title'];
    final first = json['first'];
    final last = json['last'];
    return Name(title: title, first: first, last: last);
  }
}

class Results {
  Picture picture;
  Location location;
  Name name;

  Results({
    required this.picture,
    required this.location,
    required this.name,
  });
  factory Results.fromjson(Map<String, dynamic> json) {
    final picturejson = json['picture'];
    final picture = Picture.fromjson(picturejson);

    final namejson = json['name'];
    final name = Name.fromjson(namejson);

    final locationjson = json['location'];
    final location = Location.fromjson(locationjson);

    return Results(
      name: name,
      location: location,
      picture: picture,
    );
  }
}

class Info {
  String seed;
  Info({
    required this.seed,
  });
  factory Info.fromjson(Map<String, dynamic> json) {
    final seed = json['seed'];
    return Info(seed: seed);
  }
}

class Datamain {
  Info info;
  Results results;
  Datamain({
    required this.info,
    required this.results,
  });
  factory Datamain.fromjson(Map<String, dynamic> json) {
    final jsoninfo = json["info"];
    final info = Info.fromjson(jsoninfo);

    final jsonresults = json['results'][0];
    final results = Results.fromjson(jsonresults);
    return Datamain(results: results, info: info);
  }
}
