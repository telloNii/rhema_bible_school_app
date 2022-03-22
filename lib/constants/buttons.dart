import 'package:flutter/material.dart';

// Template for login button on login and register screen
class AuthElevatedButton extends StatelessWidget {
  AuthElevatedButton({Key? key, required this.onPressed, required this.title})
      : super(key: key);
  late VoidCallback onPressed;
  late String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFF00B7E4),
      ),
      onPressed: onPressed,
      child: ListTile(
        leading: const Icon(Icons.verified_user),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
