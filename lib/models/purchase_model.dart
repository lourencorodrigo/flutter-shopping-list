class PurchaseModel {
  final String name;
  final double value;

  PurchaseModel({required this.name, required this.value});

  @override
  String toString() {
    return '$name - R\$ $value';
  }
}
