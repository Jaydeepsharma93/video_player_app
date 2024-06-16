import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player_app/screens/homescreen/home.dart';
import 'package:video_player_app/screens/homescreen/provider/videoProvider.dart';

void main()
{
  runApp(MultiProvider(providers: [
    Provider(create: (context) => VideoProvider(),)
  ],child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
