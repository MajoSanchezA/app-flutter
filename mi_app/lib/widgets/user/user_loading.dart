import 'package:flutter/material.dart';

class UserLoading extends StatelessWidget {
  const UserLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.indigo.shade50, // 🎨 Fondo suave
        border: Border.all(color: Colors.indigo.shade200, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(color: Colors.indigo),
          SizedBox(height: 12),
          Text(
            "⏳ Cargando tus datos...",
            style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Por favor espera un momento",
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
