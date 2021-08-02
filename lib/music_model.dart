class Music{
  String singer;
  String album;
  String title;

  Music({
    this.singer,
    this.album,
    this.title
  });

  factory Music.fromJson(Map<String, dynamic> parsedJson) {
    return Music(
      singer: parsedJson['singer'],
      album: parsedJson['album'],
      title: parsedJson['title'],

    );
  }
}