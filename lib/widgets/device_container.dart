import 'package:flutter/material.dart';

class DeviceContainerModel{
  double width;
  String title;
  String subtitle;
  String iconPath;
  bool isOn;
  DeviceContainerModel(
     this.width,
     this.title,
     this.subtitle,
     this.iconPath,
     this.isOn,);
}

class DeviceContainer extends StatefulWidget {
  final DeviceContainerModel model;
  final ValueChanged<bool>onSwitchChanged;
  const DeviceContainer({
    super.key,
    required this.model,
    required this.onSwitchChanged,
  });
  @override
  _DeviceContainerState createState() => _DeviceContainerState();
}

class _DeviceContainerState extends State<DeviceContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.model.width,
      height: widget.model.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFF8285EE),
          width: 2
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.model.title,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(height: 10,),
  Text(
            widget.model.subtitle,
            style:  TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.5),
              fontWeight: FontWeight.w400
            ),
          ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  widget.model.iconPath,
                height: 30,
                ),
                Switch(
                  value: widget.model.isOn
                  , onChanged: widget.onSwitchChanged

                  )
              ],
            )
        ],
      ),
    );
  }
}