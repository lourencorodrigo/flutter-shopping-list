import 'package:flutter/material.dart';
import 'package:shopping_list/models/purchase_model.dart';

class PurchaseCard extends StatelessWidget {
  final PurchaseModel purchase;

  const PurchaseCard({Key? key, required this.purchase}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(purchase.name),
        subtitle: Text(purchase.value.toString()),
        leading: const Icon(
          Icons.store,
          size: 48,
        ),
        tileColor: Colors.blue,
      ),
    );
  }
}
