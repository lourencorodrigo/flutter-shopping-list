import 'package:flutter/material.dart';
import 'package:shopping_list/components/purchase_card_component.dart';
import 'package:shopping_list/models/purchase_model.dart';
import 'package:shopping_list/views/create_page.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/';
  final List<PurchaseModel> _purchases = [];

  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LISTA DE COMPRAS'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addPurchase(context),
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: widget._purchases.length,
          itemBuilder: (BuildContext context, int index) {
            return PurchaseCard(purchase: widget._purchases[index]);
          },
        ),
      ),
    );
  }

  void _addPurchase(BuildContext context) async {
    try {
      var result = await Navigator.pushNamed(context, CreatePage.routeName)
          as PurchaseModel?;

      if (result != null) {
        setState(() {
          widget._purchases.add(result);
        });
      }
    } catch (e) {
      debugPrint('Error adicionar nova purchase');
    }
  }
}
