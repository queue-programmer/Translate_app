
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
}