class Quote{

  String? text;
  String? author;

  // named parameters { Makes it NP}
  Quote({ String? text, String? author }){
    this.text = text;
    this.author = author;
  }
}