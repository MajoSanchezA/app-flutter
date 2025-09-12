import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:http/http.dart' as http;
import 'package:mi_app_dos/models/user.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<CargarHome>((event, emit) async{
      emit(HomeLoading());

      try {
        final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

        if (response.statusCode == 200) {
          final decode = jsonDecode(response.body);

          if (decode is List) {
            final users =
                decode
                    .whereType<Map<String, dynamic>>()
                    .map((e) => User.fromJson(e))
                    .toList();
            emit(HomeSuccess(users));
          } else {
            print("Error: La respuesta no es una lista");
            emit(HomeFailure());
          }
        } else {
          print("Error: Código de estado ${response.statusCode}");
          emit(HomeFailure());
        }
      } catch (e) {
        print("Error al realizar la petición: $e");
        emit(HomeFailure());
      }
    });

    on<RetryHome>((event, emit) async{
      emit(HomeLoading());
    });
  }
}
