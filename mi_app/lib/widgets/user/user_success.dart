import 'package:flutter/material.dart';

class UserSuccess extends StatelessWidget {
  const UserSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade100, // 🎨 Fondo azul
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "👤 Información de usuario",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 8),
          Text("Nombre:", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Hola, Carlos"),
          Divider(),
          Text("Contacto:", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("usuario@gmail.com"),
          Divider(),
          Text("Saldo:", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("\$100"),
        ],
      ),
    );
  }
}
