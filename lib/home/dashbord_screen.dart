import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parent Dashbord"),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: (){
              //Todo: Navigate to Alert screen
            },
          )
        ],
      ),
      body: Column(
        children: [
          // Screen time overview
          _buildDashboardCard('Screen Time','2 hours 30 minutes',Icons.timer),
          SizedBox(height: 15),

          // App Usage Overview
          _buildDashboardCard('App Usage','Facebook:45 mins',Icons.apps),
          SizedBox(height: 15),

          // Location Updates
          _buildDashboardCard('Location','Last seen at Central Park',Icons.location_on),
          SizedBox(height: 15),

          // Alert Overview
          _buildDashboardCard('Recent Alerts','Unsafe activity detected',Icons.warning),
          SizedBox(height: 15),
        ],
      ),
    );
  }
  // Helper method to create a dashboard card
  Widget _buildDashboardCard ( String title, String value, IconData icon){
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius:
      BorderRadius.circular(10)),
      child: GestureDetector(
        onTap: (){
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(icon,color:
                Colors.blueAccent,size: 30),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    value,
                    style: GoogleFonts.poppins(fontSize: 14,color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
