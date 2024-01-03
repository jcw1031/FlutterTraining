import 'package:flutter_dotenv/flutter_dotenv.dart';

final API_KEY = dotenv.get("GOOGLE_API").toString();
const YOUTUBE_API_BASE_URL = "https://youtube.googleapis.com/youtube/v3/search";
const CF_CHANNEL_ID = "UCM6Piy9UoKBCvX7LqIVd3Gg";
