part of 'home_info_bloc.dart';

sealed class HomeInfoEvent extends Equatable {
  const HomeInfoEvent();

  @override
  List<Object> get props => [];
}

class CargarHomeInfo extends HomeInfoEvent {}

class RetryHomeInfo extends HomeInfoEvent {}