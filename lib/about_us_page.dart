import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About B.Pilot: Your Bus Tracking Companion',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to B.Pilot, your ultimate bus tracking companion! We are dedicated to revolutionizing the way you experience bus travel, making your journeys more convenient, predictable, and enjoyable.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Our Vision',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'At B.Pilot, we envision a world where bus travel is seamless and stress-free for everyone. Our goal is to empower travelers with real-time tracking information, ensuring they can navigate through their daily commutes and adventures with ease.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Who We Are',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'B.Pilot is developed by a team of passionate individuals with expertise in software development, data analysis, and transportation systems. We are driven by a shared vision of leveraging technology to enhance the bus travel experience for passengers and operators alike.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Our Values',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '- Accuracy: We prioritize accuracy in tracking bus locations and arrival times, ensuring that you have reliable information at your fingertips.',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '- Accessibility: Our app is designed to be accessible to all users, with a user-friendly interface and features that cater to diverse needs and preferences.',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '- Efficiency: We understand the value of time, which is why we strive to provide efficient solutions that streamline your bus travel experience.',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '- Collaboration: We believe in collaborating with bus operators, municipalities, and our users to continuously improve our app and enhance the overall bus travel ecosystem.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Key Features',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '- Real-time Bus Tracking: Track your bus\'s location in real-time on an interactive map, allowing you to plan your journey more effectively.',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '- Arrival Predictions: Receive accurate predictions for when your bus will arrive at your stop, helping you avoid unnecessary waiting times.',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '- Route Information: Access detailed route information, including stops, schedules, and service updates, to help you navigate through your journey with confidence.',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '- Notifications: Stay informed about service disruptions, delays, or other important updates affecting your bus route with timely notifications.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Get in Touch',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'We\'re here to support you on your bus travel adventures! If you have any questions, feedback, or suggestions, please don\'t hesitate to reach out to us. You can contact us through the app or connect with us on social media.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Thank you for choosing B.Pilot as your bus tracking companion. We look forward to enhancing your bus travel experience!',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
