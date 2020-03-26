class Food {
  final String userId;
  final String id;
  final String title;
  final String body;

  Food(
    this.userId,
    this.id,
    this.title,
    this.body,
  );

  Food.fromJson(Map<String, dynamic> json) : 
    userId = json['userId'].toString(),
    id = json['id'].toString(),
    title = json['title'],
    body = json['body'];

  Map<String, dynamic> toJson() =>{
      'userId': userId,
      'id': id,
      'title': title,
      'body':body,
  };
}