import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      amount: 189.45,
      date: DateTime.now(),
      description: 'Compra de itens',
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      amount: 241.7,
      date: DateTime.now(),
      description: 'Pagamento de contas',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionList(_transactions), TransactionForm()],
    );
  }
}
