import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart' as intl;
import 'dart:async';
import 'dart:convert';

void main() async {
  final String title = "seismic";

  var formatDate = new intl.DateFormat("yMMMMd");
  var formatTime = new intl.DateFormat("jm");

  Map _data = await getQuakes();
  List _features = _data['features'];

  void _showOnTapMessage(BuildContext context, String title, String message) {
    var alert = new AlertDialog(
      backgroundColor: Color(0xff404552),
      title: new Text(
        title,
        style: new TextStyle(color: Colors.white),
      ),
      content: new Text(
        message,
        style: new TextStyle(color: Colors.white),
      ),
      actions: <Widget>[
        new FlatButton(
          child: new Text('OK'),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );

    showDialog(context: context, builder: (context) => alert);
  }

  runApp(new MaterialApp(
    title: title,
    home: new Scaffold(
      backgroundColor: Color(0xff404552),
      appBar: new AppBar(
        backgroundColor: Color(0xff383c4a),
        title: new Text(
          title,
          style: new TextStyle(
              color: Color(0xff5294e2),
              fontSize: 35.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'Varela'),
        ),
        centerTitle: true,
      ),
      body: new Center(
        child: new ListView.separated(
          separatorBuilder: (BuildContext context, int position) {
            return new Divider(
              color: Colors.white,
            );
          },
          itemCount: _features.length,
          padding: EdgeInsets.all(20.0),
          itemBuilder: (BuildContext context, int position) {
            return new ListTile(
              title: new Text(
                "${formatDate.format(new DateTime.fromMillisecondsSinceEpoch(_features[position]['properties']['time']))} ${formatTime.format(new DateTime.fromMillisecondsSinceEpoch(_features[position]['properties']['time']))}",
                style: new TextStyle(
                  color: Colors.white,
                  fontFamily: 'Varela',
                  fontSize: 17.0,
                ),
              ),
              subtitle: new Text(
                "${_features[position]['properties']['place']}",
                style: new TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Varela',
                  fontStyle: FontStyle.italic,
                  fontSize: 14.0,
                ),
              ),
              leading: new CircleAvatar(
                backgroundColor: _features[position]['properties']['mag'] > 5.0
                    ? Colors.redAccent
                    : Color(0xff5294e2),
                child: new Text(
                  "${_features[position]['properties']['mag']}",
                  style: new TextStyle(
                    color: Colors.white,
                    fontFamily: 'Varela',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                String title = "Seismic";
                String message =
                    "Quake: ${_features[position]['properties']['title']}\n\nCoordinates: ${_features[position]['geometry']['coordinates']}\n\nID: ${_features[position]['id']}";
                _showOnTapMessage(context, title, message);
              },
            );
          },
        ),
      ),
    ),
  ));
}

Future<Map> getQuakes() async {
  String apiUrl =
      'https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson';

  http.Response response = await http.get(apiUrl);

  print(json.decode(response.body)['features'][0]);

  return json.decode(response.body);
}
