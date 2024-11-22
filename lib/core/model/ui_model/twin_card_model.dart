class TwinCardModel {
  final int id;
  final String content; // SVG identifier
  bool isFlipped;
  bool isMatched;

  TwinCardModel({
    required this.id,
    required this.content,
    this.isFlipped = false,
    this.isMatched = false,
  });
}
