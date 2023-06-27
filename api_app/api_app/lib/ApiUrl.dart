import 'dart:convert';
import 'dart:io';
import 'video_model.dart';
import 'channel_model.dart';
import 'package:http/http.dart' as http;

class ApiUrl {
  ApiUrl._instantiate();
  static final ApiUrl instance = ApiUrl._instantiate();
  static const API_KEY = "AIzaSyD6cxx8Jj9Mwev9bDiIWBjFPdn8i_UiQeg";

  final String _baseUrl = 'www.googleapis.com';
  String _nextPageToken = '';

  Future<Channel> fetchChannel({String? channelId}) async {
    Map<String, String> parameters = {
      'part': 'snippet, contentDetails, statistics',
      'id': channelId!,
      'key': API_KEY,
    };
    Uri uri = Uri.https(
      _baseUrl, '/youtube/v3/channels',
      parameters,
    );
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var response = await http.get(uri, headers: headers);
    if(response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body)['items'][0];
      Channel channel = Channel.fromMap(data);

      channel.videos = await fetchVideosFromPlaylist(
        playlistId: channel.uploadPlaylistId!,
      );
      return channel;
    } else {
      throw json.decode(response.body)['error']['message'];
    }
  }
  Future<List<Video>> fetchVideosFromPlaylist({String? playlistId}) async {
    Map<String, String> parameters = {
      'part': 'snippet',
      'playlistId': playlistId!,
      'maxResults': '8',
      'pageTaken': _nextPageToken,
      'key': API_KEY,
    };
    Uri uri = Uri.https(
      _baseUrl, '/youtube/v3/playlistItems',
      parameters,
    );
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var response = await http.get(uri, headers: headers);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      _nextPageToken = data['nextPageToken'] ?? '';
      List<dynamic> videosJson = data['items'];

      List<Video> videos = [];
      videosJson.forEach(
          (json) => videos.add(
            Video.fromMap(json['snippet']),
          ),
      );
      return videos;
    } else {
      throw json.decode(response.body)['error']['message'];
    }
  }
}