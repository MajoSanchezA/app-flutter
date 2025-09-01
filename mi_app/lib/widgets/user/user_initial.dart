import 'package:flutter/material.dart';

class UserInitial extends StatelessWidget {
  const UserInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.teal.shade50, // 🎨 Fondo suave diferente
        border: Border.all(color: Colors.teal.shade200, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person_outline, color: Colors.teal, size: 36),
          SizedBox(height: 8),
          Text(
            "Usuario en estado inicial",
            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Todavía no se han cargado datos de usuario",
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
