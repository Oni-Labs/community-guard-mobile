import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final int itemCount;
  final int crossAxisCount;
  final Widget Function(BuildContext, int) itemBuilder;

  const CustomGridView({
    super.key,
    required this.itemCount,
    this.crossAxisCount = 3,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount, // Número de colunas no grid
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1, // Proporção 1:1 para garantir que o item seja quadrado
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // Desabilita o scroll
    );
  }
}
