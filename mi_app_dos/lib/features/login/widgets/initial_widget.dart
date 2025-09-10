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
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.symmetric(horizontal: 24),

        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Iniciar Sesión",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),

              Text("Cédula"),
              const SizedBox(height: 8),

              TextField(
                maxLength: 10,
                cursorColor: Colors.blueAccent,
                controller: cedulaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent, 
                      width: 2
                    )
                  ),
                  hintText: "Ingrese su cédula",
                  prefixIcon: Icon(Icons.badge_outlined),
                ),
              ),
              const SizedBox(height: 16),

              Text("Nombre"),
              const SizedBox(height: 8),
              
              TextField(
                cursorColor: Colors.blueAccent,
                controller: nombreController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent, 
                      width: 2
                    )
                  ),
                  hintText: "Ingrese su nombre",
                  prefixIcon: Icon(Icons.person_outline),
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
                icon: Icon(Icons.person_add, size: 24,),
                label: Text("Crear Usuario", style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  iconColor: Colors.white,
                  padding: const EdgeInsets.all(25),
                  textStyle: const TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
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
