import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tour & Fun Guide'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner or Image Carousel
            Container(
              height: 200,
              child: Placeholder(), // Replace with your banner or image carousel
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Interesting Activities and Events',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Grid or List of Activities and Events
            Container(
              height: 200, // Adjust the height as per your requirement
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Replace with the actual number of activities/events
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('Activity/Event $index'),
                      subtitle: Text('Location: City, Country'),
                      // Add any other relevant details or widgets here
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Explore More',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Grid or List of Places and Activities to Explore
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildGridItem(Icons.hotel, 'Hotels'),
                  _buildGridItem(Icons.park, 'Parks'),
                  _buildGridItem(Icons.local_bar, 'Clubs'),
                  _buildGridItem(Icons.catching_pokemon, 'Zoos'),
                  _buildGridItem(Icons.nature, 'National Parks'),
                  _buildGridItem(Icons.nightlife, 'Nightlife'),
                  _buildGridItem(Icons.museum, 'Amusement Parks'),
                  _buildGridItem(Icons.music_note, 'Concerts'),
                  _buildGridItem(Icons.shopping_bag, 'Malls'),
                  _buildGridItem(Icons.gamepad, 'Game Stations'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String title) {
    return Card(
      child: InkWell(
        onTap: () {
          // Handle the tap on each grid item
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48),
            SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}
