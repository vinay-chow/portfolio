import 'package:flutter/material.dart';

void main() => runApp(MyPortfolioApp());

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio - D.Vinay",
      theme: ThemeData(
        primaryColor: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[50],
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'Arial',
            fontSize: 16,
            color: Colors.grey[800],
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo,
          titleTextStyle: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
          centerTitle: true,
          elevation: 6,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.8,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/projects': (context) => ProjectsPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Portfolio")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              SizedBox(height: 20),
              Text(
                "D. VINAY",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  color: Colors.indigo[800],
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "B.Tech 3rd Year • Computer Science",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/about'),
                child: Text("About Me"),
              ),
              SizedBox(height: 18),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/projects'),
                child: Text("Projects"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Me")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.indigo[50],
            elevation: 8,
            shadowColor: Colors.indigo.withOpacity(0.4),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.person, size: 80, color: Colors.indigo),
                  SizedBox(height: 16),
                  Text(
                    "Hello! I’m D. Vinay, a passionate Computer Science Engineering student from CR Rao AIMSCS. I love exploring modern technologies and building creative digital projects that solve real-world problems.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[800],
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 28),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text("Back to Home"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  final projects = [
    {
      "title": "Content Moderation System",
      "desc":
      "A Python-based intelligent tool for video content filtering and analysis.",
    },
    {
      "title": "Weather Forecast App",
      "desc":
      "A dynamic app built using Node.js and Java to display real-time weather data.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Projects")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            for (var p in projects)
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 5,
                child: ListTile(
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  title: Text(
                    p["title"]!,
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[700],
                      letterSpacing: 0.5,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      p["desc"]!,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[800],
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}