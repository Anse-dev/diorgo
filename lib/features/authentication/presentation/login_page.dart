import 'package:diorgo/features/authentication/application/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.watch(authControllerProvider.notifier);
    final authState = ref.watch(authControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: authState.when(
        data: (_) => LoginForm(authController: authController),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text(err.toString())),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  final AuthController authController;

  const LoginForm({super.key, required this.authController});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String errorMessage = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          const SizedBox(height: 20),
          if (errorMessage.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                errorMessage,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          ElevatedButton(
            onPressed: _login,
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }

  Future<void> _login() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    try {
      widget.authController.login(
        password: password,
        email: email,
      );

      Navigator.of(context).pushReplacementNamed('/home');
    } catch (e) {
      // Afficher un message d'erreur
      setState(() {
        errorMessage =
            'Échec de la connexion. Veuillez vérifier vos informations.';
      });
    }
  }
}
