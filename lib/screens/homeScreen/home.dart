import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.black),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Home",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Inner Circle, Connaught Place, New Delhi",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.search, color: Colors.black),
                  ],
                ),
              ),

              Image.asset(
                "assets/images/home1.png",
                width: double.infinity,
                height: 230,
                fit: BoxFit.fill,
              ),
              Divider(color: Color(0xffF4F4F4), thickness: 12),
              GridView.count(
                childAspectRatio: 1,
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  _CategoryTile(
                    imagePath: 'assets/images/Renovation.png',
                    label: "Renovation",
                  ),
                  _CategoryTile(imagePath: 'assets/images/Handyman 2.png', label: "Handyman"),
                  _CategoryTile(
                    imagePath: 'assets/images/Moving 1.png',
                    label: "Home shifting",
                  ),
                  _CategoryTile(imagePath: 'assets/images/Gardening 1.png', label: "Gardening"),
                  _CategoryTile(imagePath: 'assets/images/Declutter 2.png', label: "Declutter"),
                  _CategoryTile(imagePath: 'assets/images/surface1.png', label: "Painting"),
                ],
              ),
              Divider(color: Color(0xffF4F4F4), thickness: 12),


              const SectionTitle(title: "Popular Services"),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    _ServiceCard(
                      image: "assets/images/ac.png",
                      title: "Kitchen Cleaning",
                    ),
                    _ServiceCard(
                      image: "assets/images/sofa.jpg",
                      title: "Sofa Cleaning",
                    ),
                    _ServiceCard(
                      image: "assets/images/house.jpg",
                      title: "Full House",
                    ),
                  ],
                ),
              ),

              const SectionTitle(title: "Cleaning Services"),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    _ServiceCard(
                      image: "assets/images/house.jpg",
                      title: "Kitchen Cleaning",
                    ),
                    _ServiceCard(
                      image: "assets/images/sofa.jpg",
                      title: "Sofa Cleaning",
                    ),
                    _ServiceCard(
                      image: "assets/images/fullhouse.jpg",
                      title: "Full House",
                    ),
                  ],
                ),
              ),
              Divider(color: Color(0xffF4F4F4), thickness: 20),

              const SectionTitle(title: "Why Choose Us"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: const [
                    _InfoCard(
                      imagePath: 'assets/images/quality.png',
                      title: "Quality Assurance",
                      subtitle: "Your satisfaction is guaranteed",
                    ),
                    _InfoCard(
                      imagePath: 'assets/images/fixed.png',
                      title: "Fixed Prices",
                      subtitle:
                          "No hidden costs, all the prices are known and fixed before booking",
                    ),
                    _InfoCard(
                      imagePath: 'assets/images/hassel.png',
                      title: "Hassle free",
                      subtitle: "Convenient, time saving and secure",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: const Center(
                  child: Text(
                    "Best-in Class Safety Measures",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    _SafetyCard(
                      imagePath: 'assets/images/mask.png',
                      title: "Usage of masks, gloves & sanitisers",
                      description:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget in condimentum porttitor nec tristique pellentesque ipsum nunc.",
                    ),
                    _SafetyCard(
                      imagePath: 'assets/images/low.png',
                      title: "Low-contact Service Experience",
                      description:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget in condimentum porttitor nec tristique pellentesque ipsum nunc.",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryTile extends StatelessWidget {
  final String imagePath;
  final String label;

  const _CategoryTile({
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
          width: 0.5,
        ),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 24,
            child: Image.asset(
              imagePath,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final String image;
  final String title;

  const _ServiceCard({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              image,
              height: 80,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Text(
              title,
              style: const TextStyle(fontSize: 12),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const _InfoCard({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Image.asset(imagePath),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 12)),
      ),
    );
  }
}

class _SafetyCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const _SafetyCard({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 80,
            width: 79,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
