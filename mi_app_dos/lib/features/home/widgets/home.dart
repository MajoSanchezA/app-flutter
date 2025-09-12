// home.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/home_bloc.dart';
import 'failure_home.dart';
import 'loading_home.dart';
import 'success_home.dart';

class HomeCondition extends StatelessWidget {
  final String nombre;
  const HomeCondition({super.key, required this.nombre});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const LoadingWidget();
        } 
        if (state is HomeFailure) {
          return const FailureWidget();
        } 
        if (state is HomeSuccess) {
          return Expanded(child: SuccessWidget(users: state.users));
        }
        
        return Text('Bienvenido $nombre');
      },
    );
  }
}

class HomeView extends StatelessWidget {
  final String nombre;
  const HomeView({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Image.asset('assets/images/carrobarbie.webp'),
          ),
          Text('Bienvenido $nombre', style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 30),

          BlocProvider(
            create: (context) => HomeBloc()..add(CargarHome()),
            child: HomeCondition(nombre: nombre),
          ),
        ],
      ),
    );
  }
}
