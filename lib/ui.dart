import 'package:flutter/material.dart';


class Changa extends StatelessWidget {
  const Changa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Karigar Ji UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Karigar Ji UI'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Karigar Ji Guarantee Section
            _buildSectionTitle('Karigar Ji Guarantee'),
            _buildGuaranteeRow(),

            // Most Booked Services Section
            _buildSectionTitle('Most Booked Services'),
            _buildHorizontalScroll(
              [
                'assets/ac_repair.png',
                'assets/washing_machine.png',
                'assets/refrigerator.png',
              ],
            ),

            // Promotional Banner Section
            _buildPromotionalBanner('assets/winter_upgrade.png', 'Winter season\nUpgrade your Home'),

            // Quick Services Section
            _buildSectionTitle('Quick Services'),
            _buildQuickServicesRow(),

            // Trusted Partner Section
            _buildSectionTitle('Karigar Ji Trusted Partner'),
            _buildPartnerLogos(),

            // Subscription Plan Section
            _buildSubscriptionPlan(),

            // Referral Section
            _buildReferralSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildGuaranteeRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildIconCard('30-day money back\nGuaranteed', Icons.verified),
          _buildIconCard('Free Pick and Drop\nServices', Icons.local_shipping),
        ],
      ),
    );
  }

  Widget _buildIconCard(String text, IconData icon) {
    return Expanded(
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(icon, color: Colors.blueAccent, size: 40),
              const SizedBox(height: 8),
              Text(
                text,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHorizontalScroll(List<String> imagePaths) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(imagePaths[index]),
          );
        },
      ),
    );
  }

  Widget _buildPromotionalBanner(String imagePath, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Image.asset(imagePath),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickServicesRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildQuickServiceCard('AC Installation', 'Just 199'),
          _buildQuickServiceCard('RO Installation', 'Just 399'),
          _buildQuickServiceCard('Geyser Installation', 'Just 99'),
        ],
      ),
    );
  }

  Widget _buildQuickServiceCard(String service, String price) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Icon(Icons.settings, size: 40, color: Colors.blueAccent),
            const SizedBox(height: 8),
            Text(service),
            Text(price, style: const TextStyle(color: Colors.green)),
          ],
        ),
      ),
    );
  }

  Widget _buildPartnerLogos() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/samsung.png', width: 50),
          Image.asset('assets/apple.png', width: 50),
          Image.asset('assets/sony.png', width: 50),
          Image.asset('assets/lg.png', width: 50),
        ],
      ),
    );
  }

  Widget _buildSubscriptionPlan() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.lightBlue[50],
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Our Subscription plan for instant work',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('• 28-day Karigar free for visit'),
              Text('• Unlimited fast karigar within 15 min at your home'),
              SizedBox(height: 8),
              Text(
                '₹99/month after 3-day trial',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReferralSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: ListTile(
          leading: Image.asset('assets/referral.png', width: 50),
          title: const Text('Refer and earn 500 for every referral'),
          subtitle: const Text('Get instant Karigar Ji with your friends'),
          trailing: ElevatedButton(
            onPressed: () {},
            child: const Text('REFER NOW'),
          ),
        ),
      ),
    );
  }
}
