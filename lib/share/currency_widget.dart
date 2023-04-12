import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class CurrencyWidget extends StatelessWidget {
  const CurrencyWidget({super.key, required this.moeda});
  final CurrencyModel moeda;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
          backgroundImage: NetworkImage(
            faker.image.image(keywords: ['icon ${moeda.name}']).toString(),
          ),
        ),
        title: Text(moeda.name),
        subtitle: Text(moeda.showMoeda()),
      ),
    );
  }
}

class CurrencyModel {
  String name;
  double buy;
  double sell;
  double variate;

  CurrencyModel(
      {required this.name, this.buy = 0, this.sell = 0, this.variate = 0});

  String showMoeda() {
    return 'Compra: R\$${buy.toStringAsFixed(2)} - Venda: R\$${sell.toStringAsFixed(2)} - Variação: ${variate.toStringAsFixed(2)}%';
  }
}
