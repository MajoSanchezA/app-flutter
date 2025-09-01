import 'package:flutter/material.dart';

class UserFail extends StatelessWidget {
  const UserFail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red.shade50, // 🎨 Fondo suave
        border: Border.all(color: Colors.red.shade300, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, color: Colors.red, size: 40), // Ícono
          SizedBox(height: 10),
          Text(
            "Error cargando usuario",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 6),
          Text(
            "Por favor intenta de nuevo",
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
