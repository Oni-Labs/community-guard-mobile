import 'package:flutter/material.dart';

class FeedIsEmpty extends StatelessWidget {
  const FeedIsEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              Icons.error_outline,
              size: 100,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 10),
            const Text(
              'Não há publicações para exibir',
              // style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
