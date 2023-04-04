import 'package:citadel/misc/utilities.dart';
import 'package:citadel/widgets/heavybutton.dart';
import 'package:citadel/widgets/postbox.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.title});

  final String title;

  @override
  State<ProfileScreen> createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.gannett-cdn.com/presto/2021/10/08/NAAS/21f664d6-79a1-46d7-a588-de95512c87a9-jwj_Tesla_Gigafactory_10129.JPG'),
                    fit: BoxFit.cover),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      '43.5k',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        color: Color.fromARGB(255, 34, 34, 34),
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 45,
                  backgroundColor: Color.fromARGB(255, 213, 213, 213),
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      '1.1k',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                        color: Color.fromARGB(255, 34, 34, 34),
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                  ),
                  Text(
                    'Elon Musk',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                  ),
                  Text(
                    'I made Twitter what it is today.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 34, 34, 34), fontSize: 12),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      HeavyButton(
                        text: 'Follow',
                        onPressed: () {},
                        color: CitadelColors.darkBlue,
                        textColor: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                      ),
                      HeavyButton(
                        text: 'Message',
                        onPressed: () {},
                        color: Color.fromARGB(255, 232, 232, 232),
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
            ),
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
