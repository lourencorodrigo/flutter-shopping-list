import 'package:flutter/material.dart';
import 'package:shopping_list/components/input_component.dart';
import 'package:shopping_list/models/purchase_model.dart';

class CreatePage extends StatelessWidget {
  static String routeName = '/create';

  final TextEditingController nameController = TextEditingController();
  final TextEditingController valueController = TextEditingController();

  CreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NOVA COMPRA'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              InputComponent(
                controller: nameController,
                title: 'Nome',
              ),
              const SizedBox(height: 24),
              InputComponent(
                controller: valueController,
                title: 'Valor',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => _addPurchase(context),
                child: const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'ADICIONAR',
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _addPurchase(BuildContext context) {
    String name = nameController.text;
    double value = double.parse(valueController.text);
    PurchaseModel purchase = PurchaseModel(
      name: name,
      value: value,
    );
    Navigator.pop(context, purchase);
  }
}
