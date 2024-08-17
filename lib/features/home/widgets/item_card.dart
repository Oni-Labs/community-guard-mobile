import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.people),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.linear_scale),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Icon(Icons.image),
          ),
          const Row(
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.comment_bank),
                ],
              ),
              Icon(Icons.bookmark_border)
            ],
          ),
        ],
      ),
    );
  }
}
