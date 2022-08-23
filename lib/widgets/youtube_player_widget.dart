import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerWidget {
  static getPlayerWidget(String idVideo) {
    YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: idVideo, flags: YoutubePlayerFlags(autoPlay: false));
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
    );
  }
}
