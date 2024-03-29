import 'package:flutter/material.dart';

class PostBox extends StatelessWidget {
  final String username;
  final String location;
  final String pfpURL;
  final String content;

  const PostBox(
      {super.key,
      required this.username,
      required this.location,
      required this.pfpURL,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 1.0,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(top: 8.0)),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: const Color.fromARGB(255, 213, 213, 213),
                      backgroundImage: NetworkImage(pfpURL),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        username,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        location,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 8.0, left: 12.0, right: 12.0),
                child: SelectableText(
                  content,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_outline,
                            size: 20.0,
                          ),
                          onPressed: () {},
                        ),
                        const Text(
                          '12.1k',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(
                            Icons.mode_comment_outlined,
                            size: 20.0,
                          ),
                          onPressed: () {},
                        ),
                        const Text(
                          '803',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )
                      ],
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
