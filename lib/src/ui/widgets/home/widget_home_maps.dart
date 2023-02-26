import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../pages/home/page_home_map.dart';


class HomeMaps extends StatefulWidget {
  @override
  _HomeMapsState createState() => _HomeMapsState();
}

class _HomeMapsState extends State<HomeMaps> {
  final Set<Marker> _markers = {};
  LatLng _currentPosition = LatLng(3.595196, 98.672226);
  
  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: const MarkerId("3.595196, 98.672226"),
        position: _currentPosition,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
  }  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Stack(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                offset: const Offset(1,1)
              )]
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: _currentPosition,
                  zoom: 14.0,
                ),
                markers: _markers,
                onTap: (position) {
                  setState(() {
                    _markers.add(
                      Marker(
                        markerId:
                            MarkerId("${position.latitude}, ${position.longitude}"),
                        icon: BitmapDescriptor.defaultMarker,
                        position: position,
                      ),
                    );
                  });
                },
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: GestureDetector(
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeMap()),
                  );
                },
              child: Container(
              height: 90,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Colors.red,
                        boxShadow: [BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 6,
                          offset: Offset(1,1)
                        )]
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/map_hos.jpg'),
                      ),
                    ),
                    const SizedBox(width:10),
                    // Text("RS. Tingkat Akhir"),
                    Column(
                      children: const [
                        Text(
                          "Famous Hospital",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Text("Old Medical Road,\nKajol Shah , Sylhet")
                      ],
                    )
                  ],
                ),
              )
            ),
            ),
          )
        ],
      )
    );         
  }
}