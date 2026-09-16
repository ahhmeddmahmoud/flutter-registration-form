import 'package:flutter/material.dart';
import '../widgets/Registration_appbar.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/register_button.dart';
import '../utils/validators.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  String? nameError;
  String? emailError;
  String? passwordError;
  String? confirmPasswordError;

  String? successMessage;

  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  void _validateForm() {
    setState(() {
      nameError = Validators.validateName(nameController.text);
      emailError = Validators.validateEmail(emailController.text);
      passwordError = Validators.validatePassword(passwordController.text);
      confirmPasswordError = Validators.validateConfirmPassword(
        confirmPasswordController.text,
        passwordController.text,
      );
      successMessage = null;
    });
  }

  void _onRegisterPressed() {
    _validateForm();

    final bool isValid =
        nameError == null &&
        emailError == null &&
        passwordError == null &&
        confirmPasswordError == null;

    if (isValid) {
      setState(() {
        successMessage = 'Registration Successful';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RegistrationAppbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 10.0),

              //Name field
              CustomTextField(
                controller: nameController,
                label: 'Name',
                errorText: nameError,
                onChanged: (_) => _validateForm(),
              ),
              const SizedBox(height: 20.0),

              //Email field
              CustomTextField(
                controller: emailController,
                label: 'Email',
                errorText: emailError,
                keyboardType: TextInputType.emailAddress,
                onChanged: (_) => _validateForm(),
              ),
              const SizedBox(height: 20.0),

              //Password field with show/hide toggle
              CustomTextField(
                controller: passwordController,
                label: 'Password',
                errorText: passwordError,
                obscureText: obscurePassword,
                onChanged: (_) => _validateForm(),
                suffixIcon: IconButton(
                  icon: Icon(
                    obscurePassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    setState(() {
                      obscurePassword = !obscurePassword;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20.0),

              //Confirm Password field with show/hide toggle
              CustomTextField(
                controller: confirmPasswordController,
                label: 'Confirm Password',
                errorText: confirmPasswordError,
                obscureText: obscureConfirmPassword,
                onChanged: (_) => _validateForm(),
                suffixIcon: IconButton(
                  icon: Icon(
                    obscureConfirmPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    setState(() {
                      obscureConfirmPassword = !obscureConfirmPassword;
                    });
                  },
                ),
              ),
              const SizedBox(height: 30.0),

              //Register button
              RegisterButton(onPressed: _onRegisterPressed),
              const SizedBox(height: 16.0),

              //Success message (green), only shown once the form is valid
              if (successMessage != null)
                Center(
                  child: Text(
                    successMessage!,
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
