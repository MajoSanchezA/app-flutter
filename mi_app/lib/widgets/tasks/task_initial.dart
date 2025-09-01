import 'package:flutter/material.dart';

class TaskInitial extends StatelessWidget {
  const TaskInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade50, // 🎨 Fondo suave
        border: Border.all(color: Colors.blueGrey.shade200, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.pending_actions, color: Colors.blueGrey, size: 36),
          SizedBox(height: 8),
          Text(
            "Tareas en estado inicial",
            style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Aún no se han cargado tareas",
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
