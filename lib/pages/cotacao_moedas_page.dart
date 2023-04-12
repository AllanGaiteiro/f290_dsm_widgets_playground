import 'package:flutter/material.dart';

class CotacaoMoedasPage extends StatefulWidget {
  const CotacaoMoedasPage({super.key});

  @override
  State<StatefulWidget> createState() => _CotacaoMoedasPagesState();
}

class _CotacaoMoedasPagesState extends State<CotacaoMoedasPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // numero de elementos gerados
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(title: Text("Titulo do Card ${index + 1}")),
        );
      },
    );
  }
}