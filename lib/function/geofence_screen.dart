// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:provider/provider.dart';
//
// import 'geofence_service.dart';
//
// class GeofenceScreen extends StatelessWidget {
//   const GeofenceScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var geofenceProvider = Provider.of<GeofenceService>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Live Geofence Alerts'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Stack(
//         children: [
//           // Google Map View
//           GoogleMap(
//               initialCameraPosition:
//               CameraPosition(target:
//                   geofenceProvider.currentLocation,
//                 zoom: 14,
//               ),
//             markers: geofenceProvider.markers,
//             circles: geofenceProvider.geofences,
//             onMapCreated: geofenceProvider.onMapCreated,
//           ),
//           // Floating Alert Box
//           Positioned(
//             top: 20,
//               left: 20,
//               right: 20,
//               child: geofenceProvider.inOutsideGeofence?
//               _alertBox ("Alert! Child has left the safe zone.")
//                   :_alertBox ("Safe Zone: Child is within the geofence."),
//           )
//         ],
//       ),
//     );
//   }
//   // Custom Alert Box UI
//   Widget _alertBox(String message){
//     return Container(
//       padding: EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 5)],
//       ),
//       child: Row(
//         children: [
//           Icon(Icons.warning, color: Colors.red),
//           SizedBox(width: 10),
//           Expanded(child:
//           Text(message,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
//           )
//         ],
//       ),
//     );
//   }
// }
