
class Language_class{
  late String name;
  late String code;
  late bool isRecent;
  late bool isDownloaded;
  late bool isDownloadable;

  Language_class(String code, String name, bool isRecent,
      bool isDownloaded, bool isDownloadable) {
    this.name = name;
    this.code = code;
    this.isRecent = isRecent;
    this.isDownloaded = isDownloaded;
    this.isDownloadable = isDownloadable;
  }

  // Language_class.fromJson(Map<String, dynamic> json)
  //     : name = json ['name'],
  //       code = json['code'];
  //
  // Map<String, dynamic> toJson() => {
  //   'name': name,
  //   'code': code,
  // };
}

// class User {
//   String name;
//   String age;
//   String location;
//
//   User();
//
//   User.fromJson(Map<String, dynamic> json)
//       : name = json['name'],
//         age = json['age'],
//         location = json['location'];
//
//   Map<String, dynamic> toJson() => {
//     'name': name,
//     'age': age,
//     'location': location,
//   };
// }