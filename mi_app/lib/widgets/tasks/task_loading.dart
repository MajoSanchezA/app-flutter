import 'package:flutter/material.dart';

class TaskLoading extends StatelessWidget {
  const TaskLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue.shade50, // 🎨 Fondo suave
        border: Border.all(color: Colors.blue.shade200, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(color: Colors.blue),
          SizedBox(height: 12),
          Text(
            "⏳ Cargando tus tareas...",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Estamos preparando la información",
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
