import 'package:citadel/misc/utilities.dart';
import 'package:citadel/widgets/polloption.dart';
import 'package:citadel/widgets/postbox.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const <Widget>[
            PostBox(
                username: 'Elon Musk',
                location: 'Texas',
                pfpURL: 'https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg',
                content: '''
10 reasons why Twitter is better under me:

1. I'm VERY rich.
2. I love Twitter & Tweeting.
3. I'm one of the most followed accounts.
4. I bought it.
5. (See above)'''),
            PostBox(
                username: 'Snoop Dogg',
                location: 'Los Angeles',
                pfpURL: 'https://www.nme.com/wp-content/uploads/2022/08/Snoop-Dogg-NME-2000-X-1270-696x442.jpg',
                content: 'Well, aw shucks!'),
            PostBox(
                username: 'Jack Dorsey',
                location: 'California',
                pfpURL: 'https://hips.hearstapps.com/hmg-prod/images/gettyimages-1146354927.jpg',
                content: 'I invented Apple Computer II. Woz the Oz was the OG though.'),
            PostBox(
                username: 'The Beatles',
                location: 'Heaven',
                pfpURL: 'https://m.media-amazon.com/images/M/MV5BMjA2ODY1MDA5MV5BMl5BanBnXkFtZTcwNjU1MzIyOA@@._V1_.jpg',
                content: 'Heaven is dope bruh')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CitadelColors.darkBlue,
        elevation: 0,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
