
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_app_dos/features/login/widgets/loading_login.dart' show LoadingLoginWidget;
import '../../home/widgets/home.dart';
import '../bloc/login_bloc.dart';
import 'failure_login.dart';
import 'success_login.dart';


class LoginCondition extends StatelessWidget {
  const LoginCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(

      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => HomeView(nombre: state.nombre,))
          );
        }
      },

      builder: (context, state) {
        if (state is LoginInitial) {
          return InitialWidget();
        } else if (state is LoginLoading) {
          return Center(child: LoadingLoginWidget());
        } else if (state is LoginFailed) {
          return Center(child: FailureLoginWidget());
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}



class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: LoginCondition(),
    );
  }
}
