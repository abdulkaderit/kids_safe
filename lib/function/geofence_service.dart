// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class GeofenceService with ChangeNotifier{
//
//   late GoogleMapController _mapController;
//   LatLng? _currentLocation;
//   LatLng get currentLocation => _currentLocation ?? LatLng(37.7749, -122.4194);
//   Set<Marker> markers = {};
//   Set<Circle> geofences ={};
//   bool inOutsideGeofence = false;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();
//
//   // Get current location of the child
//   Future<void> getCurrentLocation() async {
//     try{
//       Position position = await
//       Geolocator.getCurrentPosition(
//           desiredAccuracy: LocationAccuracy.high);
//       _currentLocation = LatLng(position.latitude, position.longitude);
//       notifyListeners();
//     } catch (e){
//       print("Error getting Location:$e");
//     }
//
//
//     markers.add(
//       Marker(markerId:
//           MarkerId("child"), position:
//           _currentLocation!, infoWindow:
//           InfoWindow(title: "Child's Location")
//       ),
//     );
//     notifyListeners();
//   }
//   Future<void> loadGeofence() async {
//     var geofenceData = await _firestore.collection("geofences").get();
//     for (var doc in geofenceData.docs){
//       double lat = doc["latitude"];
//       double lng = doc["longitude"];
//       double redius = doc [" radius"].toDouble();
//       geofences.add(
//         Circle(circleId:
//             CircleId(doc.id),center: LatLng(lat, lng),
//           radius: redius,
//           strokeWidth: 2,
//           strokeColor: Colors.redAccent.withOpacity(0.2),
//         ),
//       );
//     }
//     notifyListeners();
//   }
//   //Monitor geofence
//   Future<void> monitorGeofence() async {
//     await getCurrentLocation();
//     await loadGeofence();
//
//     for ( var circle in geofences){
//       double distance = Geolocator.distanceBetween(
//       _currentLocation!.latitude,
//           _currentLocation!.latitude,
//           circle.center.latitude,
//           circle.center.longitude,
//       );
//       if (distance > circle.radius){
//         inOutsideGeofence = true;
//         _sendGeofenceAlert();
//       }else {
//         inOutsideGeofence = false;
//       }
//       notifyListeners();
//     }
//   }
//   // Send local notification alert
//   void _sendGeofenceAlert(){
//     var androidDetails = AndroidNotificationDetails('geofence _alerts', 'Geofence Alerts',
//     importance: Importance.high);
//     var generalNotification = NotificationDetails(android: androidDetails);
//     _notifications.show(0, "Geofence Alert", "Your child has left the safe zone!", generalNotification);
//
//   }
//   // Map controller
//   void onMapCreated(GoogleMapController controller){
//     _mapController = controller;
//   }
// }