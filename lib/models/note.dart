const String idKey = "id";
const String titleKey = "title";
const String contentKey = "content";

class Note {
  int? id;
  String title;
  String content;

  Note({required this.title, required this.content, this.id});

  Note.fromMap({required map})
      : id = map[idKey],
        title = map[titleKey],
        content = map[contentKey];

  Map<String, Object?> toMap() {
    return {idKey: id, titleKey: title, contentKey: content};
  }
}