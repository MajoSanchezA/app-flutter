import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline_rounded, color: Color(0xFFD81B60), size: 54),
          SizedBox(height: 20),
          Text(
            "Error al cargar la información",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: Color(0xFF880E4F),
              letterSpacing: 0.2,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {
              // context.read<HomeInfoBloc>().add(RetryHomeInfo());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFD81B60),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              textStyle: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
            ),
            icon: Icon(Icons.refresh_rounded, color: Colors.white),
            label: Text("Reintentar", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}