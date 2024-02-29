// ignore_for_file: unused_field, unused_import

import 'package:flutter/material.dart';
import 'signup.dart';
import 'passenger_signup.dart';
import 'pilot_signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Set to false to remove the debug banner
      title: 'Bus Tracking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/signup': (context) => const SignUpScreen(),
        '/signup/passenger': (context) => const PassengerSignUpScreen(),
        '/signup/pilot': (context) => const PilotSignUpScreen(),
        '/': (context) => const RegistrationScreen(),
        '/login': (context) => const LoginScreen(),
        '/person_login': (context) => const PersonLoginScreen(),
        '/pilot_login': (context) => const PilotLoginScreen(),
      },
    );
  }
}

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'B.Pilot',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Image.asset(
                'assets/dsBuffer.png',
                width: 150,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text(
        'B.Pilot',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
      ),
      backgroundColor: Colors.yellow,
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Image.asset(
              'assets/dsBuffer.png',
              width: 150,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ),
            ),
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ),
            ),
            child: const Text(
              'Sign Up',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    ),
  );
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'B.Pilot',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login as a ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/person_login');
                },
                icon: const Icon(Icons.person),
                label: const Text('Passenger'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/pilot_login');
                },
                icon: const Icon(Icons.directions_bus),
                label: const Text('Pilot'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonLoginScreen extends StatefulWidget {
  const PersonLoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PersonLoginScreenState createState() => _PersonLoginScreenState();
}

class _PersonLoginScreenState extends State<PersonLoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _nic = '';
  String _password = '';

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

    var passwordField = TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.length < 8) {
          return 'Password should be at least 8 characters!';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null) {
          _password = value.toString();
        }
      },
    );

    var loginButton = ElevatedButton(
      onPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          _formKey.currentState?.save();
          // Perform login with _nic and _password
          // Add your login logic here
        }
      },
      child: const Text('Login'),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Person Login',
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
                'Login as a passenger',
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
                child: passwordField,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: loginButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PilotLoginScreen extends StatefulWidget {
  const PilotLoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PilotLoginScreenState createState() => _PilotLoginScreenState();
}

class _PilotLoginScreenState extends State<PilotLoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final String _busRegistrationNumber = '';
  String _password = '';

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
        // Use the value if needed
      },
    );

    var passwordField = TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.length < 8) {
          return 'Password should be at least 8 characters!';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null) {
          _password = value.toString();
        }
      },
    );

    var loginButton = ElevatedButton(
      onPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          _formKey.currentState?.save();
          // Perform login with _busRegistrationNumber and _password
          // Add your login logic here
        }
      },
      child: const Text('Login'),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pilot Login',
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
                'Login as a Pilot',
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
                child: passwordField,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: loginButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
