import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player_app/screens/homescreen/provider/videoProvider.dart';
import '../videoplayscreen.dart';
import 'model/appbar.dart';
import 'model/bottomnavigationbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Consumer<VideoProvider>(
        builder: (context, videoProvider, child) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: videoProvider.videos.length,
            itemBuilder: (context, index) {
              final video = videoProvider.videos[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  VideoPlayerScreen(initialIndex: index)));
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 280,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(video['img']!),
                                  fit: BoxFit.fill)),
                        ),
                        CircleAvatar(
                          maxRadius: 35,
                          backgroundColor: Colors.black54,
                        ),
                        Icon(Icons.play_arrow, color: Colors.white, size: 40)
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(video['title']!),
                    trailing: Icon(Icons.more_vert),
                  ),
                  Divider(
                    color: Colors.grey.shade400,
                    thickness: 5,
                  )
                ],
              );
            },
          );
        },
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
}
