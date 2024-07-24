
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class myGeoLocator extends StatefulWidget {
  const myGeoLocator({super.key});

  @override
  State<myGeoLocator> createState() => _myGeoLocatorState();
}

class _myGeoLocatorState extends State<myGeoLocator> {
  @override
  Position? position;
  double? lat;
  double? lng;

  fetchPosition() async{
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      Fluttertoast.showToast(msg: "Location Service is disabled");
    }
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        Fluttertoast.showToast(msg:"You denied the permission");
      }
    }
    if(permission == LocationPermission.deniedForever){
      Fluttertoast.showToast(msg: "You denied the permission forever");
    }
    Position currentPosition = await Geolocator.getCurrentPosition();
    setState(() {
      position=currentPosition;
       lat= currentPosition.latitude;
       lng= currentPosition.longitude;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geolocator'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(position==null?"Location": position.toString()),
            // Text(position==null?"Location": lat.toString()+'\n'+lng.toString()),

            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red)
              ),
                onPressed: (){

              fetchPosition();
            },
                child: const Text("Get Location"))
          ],
        ),
      ),
    );
  }
}
