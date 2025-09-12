import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login_bloc.dart';

class FailureLoginWidget extends StatelessWidget {
  const FailureLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outline_rounded,
            color: Color(0xFFD81B60),
            size: 54,
          ),
          const SizedBox(height: 14),
          Text(
            'Ha sucedido un error en el registro',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 19,
              color: Color(0xFF880E4F),
              fontWeight: FontWeight.w600,
              letterSpacing: 0.2,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {
              context.read<LoginBloc>().add(LoginRetryEvent());
            },
            icon: Icon(Icons.refresh_rounded, color: Colors.white),
            label: Text('Reintentar', style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFD81B60),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              textStyle: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
            ),
          ),
        ],
      ),
    );
  }
}