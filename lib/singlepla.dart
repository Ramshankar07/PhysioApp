import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//mport 'screen.dart';

class singepla extends StatefulWidget {
  singepla({this.url});
  final url;

  @override
  _singeplaState createState() => _singeplaState();
}

class _singeplaState extends State<singepla> {
  TextEditingController _addItemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Physio Works',style: TextStyle(color: Colors.black87),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Container(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: YoutubePlayer(
              controller: YoutubePlayerController(
                  initialVideoId: YoutubePlayer.convertUrlToId(widget.url),
                  flags: YoutubePlayerFlags(
                    autoPlay: false,
                  )),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            width: 390,
            child: Text(
              'STEP 1: Lean forward slightly and row dumbbells up so upper arms are in-line with sides and elbows form 90-degree angles.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),

            ),
            padding: EdgeInsets.all(10.0),
          ),
          Container(
            height: 20,
          ),
          Container(
            width: 390,
            child: Text(
              'STEP 2: Lean forward slightly and row dumbbells up so upper arms are in-line with sides and elbows form 90-degree angles.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(10.0),

          ),
          Container(
            height: 20,
          ),
          Container(
            width: 390,
            child: Text(
              'STEP 3: Lean forward slightly and row dumbbells up so upper arms are in-line with sides and elbows form 90-degree angles.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(10.0),

          ),
          Container(
            height: 20,
          ),
          Container(
            width: 390,
            child: Text(
              'STEP 4: Lean forward slightly and row dumbbells up so upper arms are in-line with sides and elbows form 90-degree angles.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(10.0),
          ),
        ],
      ),
    );
  }
}