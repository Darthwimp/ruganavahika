import 'package:app_dev_client_project_1/consts/ambulance_data.dart';
import 'package:app_dev_client_project_1/widgets/hospital_widgets/ambulance_name_tile.dart';
import 'package:flutter/material.dart';

class HospitalNameDisplay extends StatelessWidget {
  const HospitalNameDisplay({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      child: ListView.builder(
        itemCount: ambulanceData.length,
        controller: scrollController,
        scrollDirection: Axis.vertical,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/booking");
            },
            child: HospitalNameTile(
              title: ambulanceData[index]["name"].toString(),
              time: ambulanceData[index]["time"].toString(),
              price: ambulanceData[index]["price"].toString(),
              ambulanceType: ambulanceData[index]["type"].toString(),
            ),
          );
        },
      ),
    );
  }
}
