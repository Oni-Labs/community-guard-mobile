import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0, // Remove a sombra
      leading: const Padding(
        padding: EdgeInsets.only(left: 16.0),
        child: Icon(Icons.lock, color: Colors.black), // Ícone de cadeado
      ),
      title: const Row(
        children: [
          Text(
            'gustaf_avf',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(Icons.keyboard_arrow_down,
              color: Colors.black, size: 20), // Ícone de seta para baixo
        ],
      ),
      centerTitle: false, // Alinha o título à esquerda
      actions: [
        IconButton(
          icon: const Icon(LucideIcons.theater,
              color: Colors.black), // Ícone personalizado
          onPressed: () {
            // Ação ao clicar no ícone
          },
        ),
        IconButton(
          icon:
              const Icon(LucideIcons.plus, color: Colors.black), // Ícone de adicionar
          onPressed: () {
            // Ação ao clicar no ícone
          },
        ),
        IconButton(
          icon: const Icon(Icons.menu, color: Colors.black), // Ícone de menu
          onPressed: () {
            // Ação ao clicar no ícone
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
