part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();
  
  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginFailed extends LoginState {}

final class LoginSuccess extends LoginState {
  final String nombre;
  const LoginSuccess(this.nombre);

  @override
  List<Object> get props => [nombre];
}