class Quote {

  String ? text;
  String ? author;

  // Quote({String ? text, String ? author}){
  //   this.text = text;
  //   this.author = author;
  // }
  Quote({ this.text, this.author });
}

Quote myquote = Quote(text: 'this is the quote text', author:'Oscar Wilde');