import 'package:coading/components/toolbar.dart';
import 'package:coading/config/app_icon.dart';
import 'package:coading/config/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.nearby),
      body: FlutterMap(
        options: MapOptions(
        center: LatLng(28.612912, 77.229509), zoom: 10),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.ces.flutter',
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 100,
                point: LatLng(28.612912, 77.229509), builder: (context){
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                    horizontal:8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14))
                      ),
                      child: Text("Username",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SvgPicture.asset(AppIcon.icLocation,
                    colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    )
                  ],
                );
               },
              )
            ],
          )
        ],
      )
    );
  }
}
