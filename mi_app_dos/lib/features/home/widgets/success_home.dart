import 'package:flutter/material.dart';
import '../../../models/user.dart';

class SuccessWidget extends StatelessWidget {
  final List<User> users;

  const SuccessWidget({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
          decoration: BoxDecoration(
            color: const Color(0xFFF8BBD0),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.pinkAccent.withOpacity(0.13),
                blurRadius: 14,
                offset: const Offset(0, 6),
              ),
            ],
            border: Border.all(
              color: Colors.pinkAccent.withOpacity(0.18),
              width: 1.1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.account_circle_rounded,
                      color: Colors.pinkAccent, size: 34),
                ),
                const SizedBox(width: 18),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Mostrar nombre completo
                      Text(
                        '${user.firstname ?? ''} ${user.lastname ?? ''}',
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF880E4F),
                          letterSpacing: 0.2,
                        ),
                      ),
                      const SizedBox(height: 6),

                      /// Mostrar ID
                      Row(
                        children: [
                          const Icon(Icons.perm_identity_rounded,
                              color: Color(0xFFAD1457), size: 18),
                          const SizedBox(width: 6),
                          Text(
                            'ID: ${user.id ?? ''}',
                            style: const TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xFFAD1457),
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),

                      /// Mostrar email
                      Row(
                        children: [
                          const Icon(Icons.alternate_email_rounded,
                              color: Color(0xFFEC407A), size: 18),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              user.email ?? '',
                              style: const TextStyle(
                                fontFamily: 'Montserrat',
                                color: Color(0xFF6A1B9A),
                                fontSize: 15,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),

                      /// Mostrar teléfono
                      Row(
                        children: [
                          const Icon(Icons.phone_android_rounded,
                              color: Color(0xFF00796B), size: 18),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              user.phone ?? '',
                              style: const TextStyle(
                                fontFamily: 'Montserrat',
                                color: Color(0xFF004D40),
                                fontSize: 15,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
