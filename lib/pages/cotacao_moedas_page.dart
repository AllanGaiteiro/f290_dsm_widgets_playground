import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../share/currency_widget.dart';

class CotacaoMoedasPage extends StatefulWidget {
  const CotacaoMoedasPage({super.key});

  @override
  State<StatefulWidget> createState() => _CotacaoMoedasPagesState();
}

class _CotacaoMoedasPagesState extends State<CotacaoMoedasPage> {
  final moeda =
      CurrencyModel(name: 'Dollar', buy: 4.9191, sell: 4.9191, variate: -1.761);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // numero de elementos gerados
      itemBuilder: (context, index) {
        //return BusinessCard(faker: faker);
        return CurrencyWidget(moeda: moeda);
      },
    );
  }
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key, required this.faker});
  final Faker faker;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
          backgroundImage: NetworkImage(
            faker.image.image(
                random: true, keywords: ['person', 'profile']).toString(),
          ),
        ),
        title: Text(faker.person.name()),
        subtitle: Text(faker.company.position()),
      ),
    );
  }
}
