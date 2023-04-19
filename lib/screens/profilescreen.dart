import 'package:citadel/misc/utilities.dart';
import 'package:citadel/widgets/heavybutton.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.bannerURL, required this.followerCount, required this.postCount, required this.pfpURL, required this.profileName, required this.profileDescription});

  final String bannerURL;
  final String followerCount;
  final String postCount;
  final String pfpURL;
  final String profileName;
  final String profileDescription;

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
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        widget.bannerURL),
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
                  children: <Widget>[
                    Text(
                      widget.followerCount,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                    const Text(
                      'Followers',
                      style: TextStyle(
                        color: Color.fromARGB(255, 34, 34, 34),
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 45,
                  backgroundColor: const Color.fromARGB(255, 213, 213, 213),
                  backgroundImage: NetworkImage(
                      widget.pfpURL),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      widget.postCount,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                    const Text(
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
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                  ),
                  Text(
                    widget.profileName,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                  ),
                  Text(
                    widget.profileDescription,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 34, 34, 34), fontSize: 12),
                  ),
                  const Padding(
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
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                      ),
                      HeavyButton(
                        text: 'Message',
                        onPressed: () {},
                        color: const Color.fromARGB(255, 232, 232, 232),
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: CitadelColors.darkBlue,
        elevation: 0,
        child: const Icon(
          Icons.chevron_left,
          color: Colors.white,
        ),
      ),
    );
  }
}
