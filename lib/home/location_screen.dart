// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';
//
// class LocationScreen extends StatefulWidget {
//   const LocationScreen({super.key});
//
//
//   @override
//  _LocationScreenState createState() => _LocationScreenState();
// }
//
// class _LocationScreenState extends State<LocationScreen> {
//   // late GoogleMapController _controller;
//   // late LocationData _currentLocation;
//   // late Location _locationService;
//   GoogleMapController? _controller;
//   LocationData? _currentLocation;
//   late Location _locationService;
//   bool _isLocationLoaded = false; // Track location loading status
//
//   @override
//   void initState(){
//     super.initState();
//     _locationService = Location();
//     _requestPermission();
//   }
//   // Request Location Permission
//   void _requestPermission() async {
//     bool _serviceEnabled;
//     PermissionStatus _permissionGranted;
//
//     // Check if location service is enabled
//     _serviceEnabled = await _locationService.serviceEnabled();
//     if(!_serviceEnabled){
//       _serviceEnabled = await _locationService.requestService();
//       if (!_serviceEnabled) {
//         return;
//       }
//     }
//     // Check location permissions
//     _permissionGranted = await _locationService.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await _locationService.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }
//     _getLocation();
//   }
//
//   // Get the Current Location
//   void _getLocation() async {
//     _currentLocation = await _locationService.getLocation();
//     setState(() {
//       // You can set the location marker and move the camera to the child's location
//       _isLocationLoaded = true;
//     });
//     // Move the camera to the child's location
//     if (_controller != null && _currentLocation != null){
//       _controller!.animateCamera(
//           CameraUpdate.newLatLng(
//               LatLng(_currentLocation!.latitude ?? 0.0, _currentLocation!.longitude ?? 0.0),
//           )
//       );
//     }
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Child\'s Live Location'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: _isLocationLoaded? GoogleMap(initialCameraPosition:
//       CameraPosition(target:
//           LatLng(_currentLocation?.latitude??0.0, _currentLocation?.longitude?? 0.0),
//         zoom: 14,
//       ),
//       markers: {
//         Marker(
//           markerId:
//             MarkerId("child_location"),
//           position:
//             LatLng(_currentLocation?.latitude ?? 0.0,_currentLocation?.longitude ??0.0),
//           infoWindow:
//             InfoWindow(title: "Child's Location"),
//         )
//       },
//         onMapCreated: (GoogleMapController controller){
//         _controller = controller;
//         },
//       )
//           :Center(child: CircularProgressIndicator()),
//     );
//   }
// }
//
