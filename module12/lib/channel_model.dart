import 'package:module12/video_model.dart';

class Channel {
  final String? id;
  final String? title;
  final String? profilePictureUrl;
  final String? subscriberCount;
  final String? videoCount;
  final String? uploadPlayListId;
  List<Video>? videos;

  Channel({
    this.id,
    this.title,
    this.profilePictureUrl,
    this.subscriberCount,
    this.uploadPlayListId,
    this.videoCount,
    this.videos
  });

  factory Channel.fromMap(Map<String, dynamic> map){
    return Channel(
      id: map['id'],
      title: map['snippet']['title'],
      profilePictureUrl: map['snippet']['thumbnails']['default']['url'],
      subscriberCount: map['statictics']['videoCount'],
      uploadPlayListId: map['contentDetails']['relatedPlayLists']['uploads']
    );
  }
}