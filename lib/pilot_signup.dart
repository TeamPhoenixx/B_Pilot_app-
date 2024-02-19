// pilot_signup.dart

// ignore_for_file: unused_field, unused_element

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/pilot_dashboard.dart';

class PilotSignUpScreen extends StatefulWidget {
  const PilotSignUpScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PilotSignUpScreenState createState() => _PilotSignUpScreenState();
}

class _PilotSignUpScreenState extends State<PilotSignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String _busRegistrationNumber = '';
  String _employeeID = '';
  String _password = '';
  final String _confirmPassword = '';
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    var busRegNumberField = TextFormField(
      decoration: const InputDecoration(
        labelText: 'Bus Registration Number',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a Bus Registration Number';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null) {
          _busRegistrationNumber = value.toString();
        }
      },
    );

    var employeeIDField = TextFormField(
      decoration: const InputDecoration(
        labelText: 'Employee ID',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter an Employee ID';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null) {
          _employeeID = value.toString();
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
            MaterialPageRoute(
                builder: (context) => const PilotDashboardScreen()),
          );
        }
      },
      child: const Text('Sign Up'),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pilot Sign Up',
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
                'Sign Up as a Pilot',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: busRegNumberField,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: employeeIDField,
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
