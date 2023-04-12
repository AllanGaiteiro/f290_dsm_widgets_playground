import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class CotacaoMoedasPage extends StatefulWidget {
  const CotacaoMoedasPage({super.key});

  @override
  State<StatefulWidget> createState() => _CotacaoMoedasPagesState();
}

class _CotacaoMoedasPagesState extends State<CotacaoMoedasPage> {
  final faker = Faker();
  final moeda =
      Moeda(name: 'Dollar', buy: 4.9191, sell: 4.9191, variate: -1.761);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // numero de elementos gerados
      itemBuilder: (context, index) {
        //return BusinessCard(faker: faker);
        return MoedaCard(moeda: moeda);
      },
    );
  }
}

class MoedaCard extends StatelessWidget {
  const MoedaCard({super.key, required this.moeda});
  final Moeda moeda;
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

class Moeda {
  String name;
  double buy;
  double sell;
  double variate;

  Moeda(
      {required this.name,
      required this.buy,
      required this.sell,
      required this.variate});

  String showMoeda() {
    return 'Compra: R\$${buy.toStringAsFixed(2)} - Venda: R\$${sell.toStringAsFixed(2)} - Variação: ${variate.toStringAsFixed(2)}%';
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
