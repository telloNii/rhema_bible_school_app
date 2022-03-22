import 'package:flutter/material.dart';

// Template for login button on login and register screen
class AuthElevatedButton extends StatelessWidget {
  AuthElevatedButton({Key? key, required this.onPressed}) : super(key: key);
  late VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFF00B7E4),
      ),
      onPressed: onPressed,
      child: const ListTile(
        leading: Icon(Icons.align_vertical_bottom),
        title: Text("Login"),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
