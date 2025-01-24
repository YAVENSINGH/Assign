import 'package:flutter/material.dart';
import 'package:intern/banner_section_an.dart';
import 'package:intern/search_field.dart';  // Importing SearchField// Importing ServiceGrid
import 'package:intern/banner_section.dart'; // Assuming you have a BannerSection widget
import 'package:intern/service_card.dart';  // Assuming you have a ServiceCard widget

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> bannerImages = [
    'assets/banner1.jpg',
    'assets/banner2.jpg',
    'assets/banner3.jpg',
  ];

  final List<Map<String, String>> services = [
    {'title': 'Electrician', 'image': "image/GB.png"},
    {'title': 'TV Service', 'image': "image/TV.png"},
    {'title': 'Plumber', 'image': "image/pl.png"},
    {'title': 'AC Service', 'image': "image/accc 1.png"},
    {'title': 'Home Appliances', 'image': "image/Vector.png"},
    {'title': 'Washing Machine', 'image': "image/Washing.png"},
  ];

  final List<Map<String, String>> anotherService = [
    {'title': 'Commercial AC', 'image': "image/accc 1.png"},
    {'title': 'Deep Freezer', 'image': "image/deep.png"},
    {'title': 'Water Cooler', 'image': "image/nejn 1.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "KARIGAR JI ,",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Colors.blue,
                    shadows: [
                      Shadow(
                        blurRadius: 3.0,
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(2, 2),
                      ),
                    ],
                    letterSpacing: 1.5,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.red, size: 16),
                    SizedBox(width: 5),
                    Text(
                      "Mohan Nagar - Gaziabad",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            iconSize: 24,
            color: Colors.lightBlue,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Field

            // Banner Section
            BannerSection(bannerImages: bannerImages),

            // Services Grid - Residential Services
            ServiceGrid(services: services),

            // Middle Section - Image with Text
            const Padding(
              padding: EdgeInsets.only(right: 1),
              child: Text("Commercial AC/Refrigerator Services"),
            ),

            // Services Grid - Commercial Services
            ServiceGrid(services: anotherService),

            // Bottom Section
            const Padding(
              padding: EdgeInsets.only(right: 1),
              child: Text("Top Services"),
            ),

            BannerSectionAn(bannerImages: bannerImages),
          ],
        ),
      ),
    );
  }
}
