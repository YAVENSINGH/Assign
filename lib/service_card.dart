import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final Map<String, String> service;

  const ServiceCard({required this.service});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Image.asset(
            service['image']!,
            height: 50,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          service['title']!,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
