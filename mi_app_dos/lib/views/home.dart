import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_app_dos/features/homeinfo/bloc/home_info_bloc.dart';
import 'package:mi_app_dos/features/homeinfo/homeInfo_container.dart';


class HomeView extends StatelessWidget {
  final String nombre;
  const HomeView({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 60),
            child: Image.asset('assets/images/carro-onix-hatchback.png'),
          ),
          Text('Bienvenido $nombre', style: TextStyle(fontSize: 24),),
          SizedBox(height: 30),
          BlocProvider(
            create: (context) => HomeInfoBloc()..add(CargarHomeInfo()),
            child: HomeinfoContainer(nombre: nombre),
          ),
        ],
      ),
    );
  }
}
