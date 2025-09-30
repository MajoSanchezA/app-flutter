import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      emit(LoginInitial());
    });

    on<LoginRetryEvent>((event, emit) async {
      emit(LoginInitial());
    });

    on<CreateUserEvent>((event, emit) async {
      emit(LoginLoading());

      try {
        final response = await http.post(
          Uri.parse('https://jsonplaceholder.typicode.com/posts'),
          body: jsonEncode({'cedula': event.cedula, 'nombre': event.nombre}),
          headers: {'Content-Type': 'application/json'},
        );

        print(response.statusCode);
        if (response.statusCode == 201) {
          print(response.body);
          final decode = jsonDecode(response.body);
          emit(LoginSuccess(decode["nombre"]));
        } else {
          emit(LoginFailed());
        }
      } catch (e) {
        emit(LoginFailed());
      }
    });
  }
}
