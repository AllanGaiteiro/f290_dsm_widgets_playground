import 'package:flutter/material.dart';

class CotacaoMoedasPage extends StatefulWidget {
  const CotacaoMoedasPage({super.key});

  @override
  State<StatefulWidget> createState() => _CotacaoMoedasPagesState();
}

class _CotacaoMoedasPagesState extends State<CotacaoMoedasPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text('Linha 01'),
        const Text('Linha 02'),
        FilledButton(onPressed: () {}, child: const Text("Botao")),
        const Text('Linha 01'),
        const Text('Linha 02'),
        FilledButton(onPressed: () {}, child: const Text("Botao")),
        const Text('Linha 01'),
        const Text('Linha 02'),
        FilledButton(onPressed: () {}, child: const Text("Botao")),
        const Text('Linha 01'),
        const Text('Linha 02'),
        FilledButton(onPressed: () {}, child: const Text("Botao")),
        const Text('Linha 01'),
        const Text('Linha 02'),
        FilledButton(onPressed: () {}, child: const Text("Botao")),
        const Text('Linha 01'),
        const Text('Linha 02'),
        FilledButton(onPressed: () {}, child: const Text("Botao")),
      ],
    );
  }
}
