import 'package:flutter/material.dart';
import 'package:intern/service_card.dart';  // Import ServiceCard widget

class ServiceGrid extends StatelessWidget {
  final List<Map<String, String>> services;

  const ServiceGrid({Key? key, required this.services}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: services.length,
      itemBuilder: (context, index) {
        final service = services[index];
        return ServiceCard(service: service);  // Pass each service to ServiceCard
      },
    );
  }
}
