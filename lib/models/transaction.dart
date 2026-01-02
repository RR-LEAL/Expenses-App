class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String description;

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.description,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'amount': amount,
      'date': date.toIso8601String(),
      'description': description,
    };
  }

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      title: json['title'],
      amount: json['amount'],
      date: DateTime.parse(json['date']),
      description: json['description'],
    );
  }
}
