import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: FileManagerHome(),
    );
  }
}

class FileManagerHome extends StatelessWidget {
  final List<Map<String, dynamic>> fileCategories = [
    {
      "icon": Icons.description,
      "title": "Documents",
      "count": 45,
      "subtitle": "Includes Word, PPT, Excel, WPS, etc.",
    },
    {
      "icon": Icons.text_snippet,
      "title": "Ebooks",
      "count": 88,
      "subtitle": "Includes .umd, .ebk, .txt, .chm, etc.",
    },
    {
      "icon": Icons.android,
      "title": "Apks",
      "count": 0,
      "subtitle": "Includes .apk files",
    },
    {
      "icon": Icons.archive,
      "title": "Archives",
      "count": 4,
      "subtitle": "Includes .7z, .rar, .zip, .iso, etc.",
    },
    {
      "icon": Icons.folder,
      "title": "Big files",
      "count": 41,
      "subtitle": "Includes files > 50 MB",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green[800]),
              child: Row(
                children: [
                  Icon(Icons.file_copy, color: Colors.orange, size: 62),
                  SizedBox(width: 10),
                  Text(
                    'Xender',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.language, color: Colors.blue),
              title: Text("Language", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.wifi, color: Colors.blue),
              title: Text(
                "High-speed Mode supported",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Send via High-speed Mode",
                style: TextStyle(color: Colors.grey[400], fontSize: 12),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text("Settings", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.dark_mode, color: Colors.white),
              title: Text("Settings", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings_applications, color: Colors.orange),
              title: Text(
                "Mi Phone Settings",
                style: TextStyle(color: Colors.orangeAccent),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help, color: Colors.green),
              title: Text(
                "Help & Feedback",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star, color: Colors.pinkAccent),
              title: Text("Ratings", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.orange),
              title: Text("About", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            SizedBox(height: 20),
            Center(child: Icon(Icons.expand_more, color: Colors.grey)),
            SizedBox(height: 10),
          ],
        ),
      ),

      appBar: AppBar(
        title: Text("Mahfuj"),
        backgroundColor: const Color.fromARGB(255, 7, 77, 11),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("APP", style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: Text("PHOTO", style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: Text("MUSIC", style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: Text("VIDEO", style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: Text("FILE", style: TextStyle(color: Colors.white)),
          ),
          Builder(
            builder:
                (context) => IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search local files",
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey[800],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Text(
              "Phone Storage",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              "Total: 244GB    Available: 135GB",
              style: TextStyle(color: Colors.grey[400]),
            ),
            SizedBox(height: 8),

            SizedBox(height: 16),
            ...fileCategories.map(
              (item) => ListTile(
                leading: Icon(item["icon"], size: 30, color: Colors.blue[300]),
                title: Text("${item["title"]} (${item["count"]})"),
                subtitle: Text(item["subtitle"]),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_play),
            label: 'PLAYLIST',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'TOMP3'),
          BottomNavigationBarItem(icon: Icon(Icons.shuffle), label: 'SOCIAL'),
          BottomNavigationBarItem(
            icon: Icon(Icons.social_distance_outlined),
            label: 'SOCIAL',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'ME'),
        ],
      ),
    );
  }
}
