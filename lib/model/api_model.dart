class Quote{
  String text;
  String author;

  Quote({this.text, this.author});

  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(
      text: json['text'],
      author: json['author'],
      
    );
  }
}