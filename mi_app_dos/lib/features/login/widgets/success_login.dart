import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_app_dos/features/login/bloc/login_bloc.dart';

class InitialWidget extends StatelessWidget {
  final TextEditingController cedulaController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();

  InitialWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        decoration: BoxDecoration(
          color: const Color(0xFFF8BBD0),
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            color: const Color(0xFFD81B60),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.pinkAccent.withOpacity(0.10),
              blurRadius: 18,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Iniciar Sesión",
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF880E4F),
                  letterSpacing: 0.2,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Text("Cédula", style: TextStyle(fontFamily: 'Montserrat', color: Color(0xFFAD1457), fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              TextField(
                maxLength: 10,
                cursorColor: Color(0xFFD81B60),
                controller: cedulaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD81B60),
                      width: 2
                    )
                  ),
                  hintText: "Ingrese su cédula",
                  prefixIcon: Icon(Icons.badge_outlined, color: Color(0xFFD81B60)),
                ),
              ),
              const SizedBox(height: 16),
              Text("Nombre", style: TextStyle(fontFamily: 'Montserrat', color: Color(0xFFAD1457), fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              TextField(
                cursorColor: Color(0xFFD81B60),
                controller: nombreController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD81B60),
                      width: 2
                    )
                  ),
                  hintText: "Ingrese su nombre",
                  prefixIcon: Icon(Icons.person_outline, color: Color(0xFFD81B60)),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {
                  final cedulaText = cedulaController.text.trim();
                  final nombre = nombreController.text.trim();
                  if (cedulaText.isEmpty || nombre.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Todos los campos son obligatorios')),
                    );
                    return;
                  }
                  if (cedulaText.length < 8 || nombre.length < 3){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Por favor ingrese datos validos"))
                    );
                    return;
                  }
                  final cedula = int.tryParse(cedulaText) ?? 0;
                  context.read<LoginBloc>().add(CreateUserEvent(cedula: cedula, nombre: nombre));
                },
                icon: Icon(Icons.person_add, size: 24, color: Colors.white),
                label: Text("Crear Usuario", style: TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontWeight: FontWeight.w600)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD81B60),
                  iconColor: Colors.white,
                  padding: const EdgeInsets.all(22),
                  textStyle: const TextStyle(fontSize: 20, fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
