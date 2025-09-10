// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/failed_widget.dart';
import 'widgets/loading_widget.dart';
import 'bloc/home_info_bloc.dart';
import 'widgets/success_widget.dart';

class HomeinfoContainer extends StatelessWidget {
  final String nombre;
  const HomeinfoContainer({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeInfoBloc, HomeInfoState>(
      builder: (context, state) {
        if (state is HomeInfoLoading) {
          return LoadingWidget();
        } if (state is HomeInfoFailed) {
          return FailedWidget();
        } if (state is HomeInfoSuccess) {
          return Expanded(child: SuccessWidget(users: state.users));
        }
        
        return Text('Bienvenido $nombre');
      },
    );
  }
}
