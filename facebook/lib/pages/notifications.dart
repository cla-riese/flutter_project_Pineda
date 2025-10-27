import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications',
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),

          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Today Section
            const Padding(padding: EdgeInsets.all(12.0),
            child: Text('Today',
            style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.bold),
            ),
            ),
            // Meta
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/profile/prof2.jpg'),
                radius: 24,
              ),
              title: const Text('Meta',
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Learn how Meta will use your info in new ways to personalize your experiences.'),
                SizedBox(height: 4),
                Text('16h',
                style: TextStyle(fontSize: 12,
                color: Colors.grey),
                ),
                ],
              ),
              trailing: const Icon(Icons.more_vert),
            ),

            //5 Unkown Facts 
            ListTile(leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profile/prof1.jpg'),
              radius: 24,
            ),
            title: Text('5 Unknown Facts',
            style: TextStyle(fontWeight:FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Recently shared 1 post.'),
                SizedBox(height: 4),
                Text('20h',
                style: TextStyle(fontSize: 12,
                color: Colors.grey),
                ),
              ],
            ),
            trailing: const Icon(Icons.more_vert),
            ),
            //Fandango
            ListTile(leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profile/prof5.jpg'),
              radius: 24,
            ),
            title: Text('Fandango',
            style: TextStyle(fontWeight:FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('White cat licks black cat.'),
                SizedBox(height: 4),
                Text('5h',
                style: TextStyle(fontSize: 12,
                color: Colors.grey),
                ),
              ],
            ),
            ),

          ],
        ),
      ),
    );
  }
}