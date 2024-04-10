import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginContents extends StatefulWidget {
  final VoidCallback? onLoggedIn;

  const LoginContents({Key? key, this.onLoggedIn}) : super(key: key);

  @override
  State<LoginContents> createState() => _LoginContentsState();
}

class _LoginContentsState extends State<LoginContents> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;
  bool _submitted = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    setState(() => _submitted = true);
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);
      // TODO: Implement your authentication logic here
      await Future.delayed(
          const Duration(seconds: 1)); // Simulate a network call
      widget.onLoggedIn?.call();
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Replace hardcoded strings with your localization solution
    // TODO: Replace gapH8 with your actual vertical gap based on your app's design system
    return Text('form here');
  }
}
