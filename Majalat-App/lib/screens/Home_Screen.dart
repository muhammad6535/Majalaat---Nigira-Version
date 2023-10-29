// ignore_for_file: prefer_const_constructors, sort_child_properties_last, depend_on_referenced_packages, file_names, unused_local_variable, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:majalat_app/screens/volunteers_Screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:majalat_app/widgets/popup_menu_widget.dart';

import '../controller/data_controller.dart';
import '../controller/favorites_controller.dart';
import '../widgets/elevated_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataController dataController = Get.put(DataController());

    FavoritesController favoritesController = Get.put(FavoritesController());
    Size size = MediaQuery.of(context).size;

    Widget showLoadingIcon() {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.9,
        child: Center(
          child: SpinKitRing(
            color: Colors.blue,
            size: 100.0,
          ),
        ),
      );
    }

    Widget showPage() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 12,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 30,
              ),
              child: Text(
                  "A community initiative aimed to helping every student in our community choose the most suitable academic field and institution based on their interests, aspirations, capabilities, and circumstances.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.almarai(
                    fontSize: 17,
                    color: Colors.black,
                    letterSpacing: 0.8,
                    height: 1.2,
                  ))),
          SizedBox(
            height: 17,
          ),
          Container(
              height: 0.7,
              color: Colors.grey.shade400,
              width: size.width * 0.75),
          SizedBox(
            height: 30,
          ),
          Obx(
            () => Text(dataController.volunteersList.length.toString(),
                textAlign: TextAlign.center,
                style: GoogleFonts.almarai(
                  fontSize: 90,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[850],
                  letterSpacing: 0.8,
                  height: 1.2,
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Volunteers",
            textAlign: TextAlign.center,
            style: GoogleFonts.almarai(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 0.8,
              height: 1.2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Ready to assist and guide you",
            textAlign: TextAlign.center,
            style: GoogleFonts.almarai(
              fontSize: 17,
              color: Colors.black,
              letterSpacing: 0.2,
              height: 1.2,
            ),
          ),
          SizedBox(
            height: 22,
          ),
          ElevatedButtonWidget(
            id: 1,
            text: "Browse Volunteers",
            fontSize: 20,
            backgroundColor: Colors.blue.shade600,
            borderRadius: BorderRadius.circular(10),
            minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
            textColor: Colors.white,
            nextScreen: VolunteersScreen(),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 0.7,
              color: Colors.grey.shade400,
              width: size.width * 0.75),
          SizedBox(
            height: 1,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 30,
              ),
              child: Obx(
                () => Text(
                    "You can easily join ${dataController.volunteersList.length.toString()} volunteers in various fields. Perhaps a minute of your time spent offering advice to someone seeking education will leave a significant impact on their journey and be recorded as a great deed in your life's ledger.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.almarai(
                      fontSize: 16,
                      color: Colors.black,
                      letterSpacing: 0.8,
                      height: 1.2,
                    )),
              )),
          ElevatedButtonWidget(
            id: 2,
            text: "Join as a Volunteer",
            fontSize: 20,
            backgroundColor: Colors.yellow.shade700,
            borderRadius: BorderRadius.circular(10),
            textColor: Colors.grey.shade800,
            minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
            nextScreen: VolunteersScreen(),
          ),
          SizedBox(
            height: 35,
          ),
        ],
      );
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage("assets/majalaat-icon.png"),
                    width: 35,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Majalaat', style: GoogleFonts.almarai()),
                ],
              ),
              Obx(() => Visibility(
                    visible: dataController.volunteersList.isNotEmpty,
                    child: PopUpMenuWidget(currentPage: "home"),
                  ))
            ],
          ),
        ),
        body: Container(
          color: Color.fromARGB(183, 238, 242, 242),
          child: ListView(
            children: [
              Obx(() => dataController.volunteersList.isEmpty
                  ? showLoadingIcon()
                  : showPage())
            ],
          ),
        ),
      ),
    );
  }
}
