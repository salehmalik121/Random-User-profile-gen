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
  String state;
  String country;
  Location({
    required this.city,
    required this.state,
    required this.country,
  });
  factory Location.fromjson(Map<String, dynamic> json) {
    final city = json["city"];
    final state = json["state"];
    final country = json["country"];
    return Location(city: city, state: state, country: country);
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
  String gender;
  String phone;
  String cell;
  Results({
    required this.picture,
    required this.location,
    required this.name,
    required this.gender,
    required this.phone,
    required this.cell,
  });
  factory Results.fromjson(Map<String, dynamic> json) {
    final gender = json['gender'];

    final phone = json['phone'];

    final cell = json['cell'];

    final picturejson = json['picture'];
    final picture = Picture.fromjson(picturejson);

    final namejson = json['name'];
    final name = Name.fromjson(namejson);

    final locationjson = json['location'];
    final location = Location.fromjson(locationjson);

    return Results(
      gender: gender,
      name: name,
      location: location,
      phone: phone,
      cell: cell,
      picture: picture,
    );
  }
}
