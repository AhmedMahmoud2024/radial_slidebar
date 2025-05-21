import 'package:flutter/material.dart';
import 'package:flutter_radial_slider/widgets/device_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<DeviceContainerModel>deviceModel=[
  DeviceContainerModel(
    180,
    "Lamp",
    "Kitchen",
    'assets/idea.png',
    false
  ),
   DeviceContainerModel(
    180,
    "Lamp",
    "Kitchen",
    'assets/idea.png',
    false
  ),
   DeviceContainerModel(
    180,
    "Air Conditioning",
    "Living Room",
    'assets/air-conditioner.png',
    true
  ),
   DeviceContainerModel(
    180,
    "Fan",
    "Bedroom ",
    'assets/fan.png',
    false
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDFDFD),
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'My Home',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color:Colors.black 
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search,color: Colors.black,size: 40,),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Devices',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(
                        Icons.add_circle_outline
                        ,color: Color(0xFF8285EE),
                        size: 30,),
                    ],
                  ),

                   Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),

                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DeviceContainer(model: deviceModel[0], onSwitchChanged:(value){

                  } ),
                    DeviceContainer(model: deviceModel[1], onSwitchChanged:(value){

                  } ),
                ],
              ),
                 const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DeviceContainer(model: deviceModel[2], onSwitchChanged:(value){

                  } ),
                    DeviceContainer(model: deviceModel[3], onSwitchChanged:(value){

                  } ),
                ],
              ),
                 const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Rooms',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(
                        Icons.add_circle_outline
                        ,color: Color(0xFF8285EE),
                        size: 30,),
                    ],
                  ),

                   Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),

                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}