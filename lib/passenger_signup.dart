// passenger_signup.dart

// ignore_for_file: unused_field, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';

class PassengerSignUpScreen extends StatefulWidget {
  const PassengerSignUpScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PassengerSignUpScreenState createState() => _PassengerSignUpScreenState();
}

class _PassengerSignUpScreenState extends State<PassengerSignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String _nic = '';
  String _username = '';
  String _password = '';
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    var nicField = TextFormField(
      decoration: const InputDecoration(
        labelText: 'NIC Number',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || (value.length != 9 && value.length != 12)) {
          return 'Incorrect NIC number!';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null) {
          _nic = value.toString();
        }
      },
    );

    var usernameField = TextFormField(
      decoration: const InputDecoration(
        labelText: 'Username',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a username';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null) {
          _username = value.toString();
        }
      },
    );

    var passwordField = TextFormField(
      obscureText: !_isPasswordVisible,
      decoration: InputDecoration(
        labelText: 'Password',
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
        ),
      ),
      validator: (value) {
        if (value == null || value.length < 8) {
          return 'Password should be at least 8 characters';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null) {
          _password = value.toString();
        }
      },
    );

    var confirmPasswordField = TextFormField(
      obscureText: !_isPasswordVisible,
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
        ),
      ),
      validator: (value) {
        if (_password.isNotEmpty && value != _password) {
          return 'Passwords do not match';
        }
        return null;
      },
      onSaved: (value) {
        // Use the value if needed
      },
    );

    var signUpButton = ElevatedButton(
      onPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          _formKey.currentState?.save();
          // Perform sign-up with _busRegistrationNumber, _employeeID, _password, _confirmPassword
          // Add your sign-up logic here

          // After successful signup, navigate to the dashboard
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const DashboardScreen()),
          );
        }
      },
      child: const Text('Sign Up'),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Passenger Sign Up',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign Up as a Passenger',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: nicField,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: usernameField,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: passwordField,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: confirmPasswordField,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: signUpButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
