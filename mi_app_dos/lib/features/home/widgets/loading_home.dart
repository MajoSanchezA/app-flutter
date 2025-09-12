
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 54,
            height: 54,
            child: CircularProgressIndicator(
              color: Color(0xFFD81B60),
              backgroundColor: Color(0xFFF8BBD0),
              strokeWidth: 6.5,
            ),
          ),
          SizedBox(height: 22),
          Text(
            "Cargando...",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: Color(0xFF880E4F),
              letterSpacing: 0.2,
            ),
          ),
        ],
      ),
    );
  }
}