import 'package:flutter/material.dart';

class TaskFail extends StatelessWidget {
  const TaskFail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.orange.shade50, // 🎨 Fondo suave diferente
        border: Border.all(color: Colors.orange.shade300, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.warning_amber_rounded, color: Colors.orange, size: 40),
          SizedBox(height: 10),
          Text(
            "Error cargando tareas",
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 6),
          Text(
            "Revisa tu conexión o intenta más tarde",
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
