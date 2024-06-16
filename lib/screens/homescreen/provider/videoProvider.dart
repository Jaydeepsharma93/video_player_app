import 'package:flutter/material.dart';

class VideoProvider extends ChangeNotifier {
  List<Map<String, String>> _videos = [
    {
      'title': 'Butterfly',
      'url':
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      'img':
          'https://static.vecteezy.com/system/resources/thumbnails/025/389/791/small_2x/a-beautiful-butterfly-on-a-blurred-background-generated-by-ai-photo.jpg'
    },
    {
      'title': 'Elephant Dream',
      'url':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
      'img':'https://religionandgender.org/wp-content/uploads/2024/05/interpreting_dreams_about_elephants.jpg'
    },
    {
      'title': 'Big Buck Bunny',
      'url':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYcSNxXAI55zUqRjQCxutnMrmHcRTtmj4MDw&s'

    },
    {
      'title': 'For Bigger Blazes',
      'url':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
      'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1gFENS_Ihx7NKAIq54JMonK1s8FO3qC3tlA&s'
    },
    {
      'title': 'For Bigger Escape',
      'url':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4',
      'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScw__9MSlasmXoF69MJeXl7h23DjWJ3D5nwg&s'
    },
    {
      'title': 'For Bigger Fun',
      'url':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
      'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAmVePspk7L7-4IXGRoDqikrH66n4u2f6w8g&s'
    },
    {
      'title': 'For Bigger Joyrides',
      'url':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4',
      'img':'https://images-cdn.ispot.tv/ad/7TK8/default-large.jpg'
    },
    {
      'title': 'For Bigger Meltdowns',
      'url':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4',
      'img':'https://images-cdn.ispot.tv/ad/75GS/default-large.jpg'
    },
    {
      'title': 'Sintel',
      'url':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4',
      'img':'https://i.ytimg.com/vi/IN6w6GnN-Ic/maxresdefault.jpg'
    },
    {
      'title': 'Tears of Steel',
      'url':
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4',
      'img':'https://content.jwplatform.com/v2/media/2bzJyM27/poster.jpg'
    },
  ];

  List<Map<String, String>> get videos => _videos;
}
