import 'package:cf_tube/model/video_model.dart';
import 'package:cf_tube/repository/youtube_repository.dart';
import 'package:cf_tube/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  List<VideoModel> result = await YoutubeRepository.getVideos();
  print(result.toString());

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
