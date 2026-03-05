class CardModel {
  final int? id;
  final int folderId;
  final String question;
  final String answer;

  CardModel({
    this.id,
    required this.folderId,
    required this.question,
    required this.answer,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'folderId': folderId,
      'question': question,
      'answer': answer,
    };
  }

  factory CardModel.fromMap(Map<String, dynamic> map) {
    return CardModel(
      id: map['id'],
      folderId: map['folderId'],
      question: map['question'],
      answer: map['answer'],
    );
  }
}