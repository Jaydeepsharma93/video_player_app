import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'homescreen/provider/videoProvider.dart';

class VideoPlayerScreen extends StatefulWidget {
  final int initialIndex;

  VideoPlayerScreen({required this.initialIndex});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _initializePlayer();
  }

  void _initializePlayer() {
    final videoProvider = Provider.of<VideoProvider>(context, listen: false);
    final video = videoProvider.videos[_currentIndex];

    _videoPlayerController = VideoPlayerController.network(video['url']!);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      autoPlay: true,
      looping: false,
    );

    _videoPlayerController.addListener(_videoListener);
  }

  void _videoListener() {
    if (_videoPlayerController.value.position == _videoPlayerController.value.duration) {
      _playNextVideo();
    }
  }

  void _playNextVideo() {
    final videoProvider = Provider.of<VideoProvider>(context, listen: false);

    if (_currentIndex < videoProvider.videos.length - 1) {
      setState(() {
        _currentIndex++;
      });
      _disposeControllers();
      _initializePlayer();
    }
  }

  void _playPreviousVideo() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
      _disposeControllers();
      _initializePlayer();
    }
  }

  void _disposeControllers() {
    _videoPlayerController.removeListener(_videoListener);
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }

  @override
  void dispose() {
    _disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Provider.of<VideoProvider>(context).videos[_currentIndex]['title']!),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Chewie(
                controller: _chewieController,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.skip_previous),
                onPressed: _playPreviousVideo,
              ),
              IconButton(
                icon: Icon(Icons.skip_next),
                onPressed: _playNextVideo,
              ),
            ],
          ),
        ],
      ),
    );
  }
}