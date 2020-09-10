import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Expanded Widget';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: [
            buildCard(
              title: 'Paris',
              description: 'Paris is the capital of France.',
              urlImage:
                  'https://images.unsplash.com/photo-1549144511-f099e773c147?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
            ),
            buildCard(
              title: 'Berlin',
              description: 'Berlin is the capital of Germany.',
              urlImage:
                  'https://images.unsplash.com/photo-1552132848-ffd27614f24b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=705&q=80',
            ),
            buildCard(
              title: 'London',
              description: 'London is the capital of England.',
              urlImage:
                  'https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
            ),
            buildCard(
              title: 'Beijing',
              description: 'Beijing is the capital of China.',
              urlImage:
                  'https://images.unsplash.com/photo-1543158015-04650a9d832a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1491&q=80',
            ),
            buildCard(
              title: 'New Delhi',
              description: 'New Delhi is the capital of India.',
              urlImage:
                  'https://images.unsplash.com/photo-1575566668200-7dcaa7b2cf28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
            ),
          ],
        ),
      );
  Widget buildCard({
    @required String title,
    @required String description,
    @required String urlImage,
  }) {
    final double radius = 16;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      elevation: 4,
      child: Row(
        children: [
          Expanded(child: buildText(title, description)),
          buildImage(radius, urlImage),
        ],
      ),
    );
  }

  Widget buildImage(double radius, String urlImage) => ClipRRect(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(radius),
        ),
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
          width: 120,
          height: 120,
        ),
      );

  Widget buildText(String title, String description) => Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      );
}
