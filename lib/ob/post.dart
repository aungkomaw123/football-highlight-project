class postOb {
  int userId = 0;
  String title = '';
  String body = '';

  postOb.fromMap(Map<String, dynamic> map) {
    userId = map['id'];
    title = map['title'];
    body = map['body'];
  }
}
