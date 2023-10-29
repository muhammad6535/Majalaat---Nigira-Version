// ignore_for_file: prefer_const_constructors, prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:majalat_app/screens/privacy_policy_screen.dart';
import 'package:majalat_app/screens/terms_of_use_screen.dart';
import '../widgets/popup_menu_widget.dart';

class AboutMajalaatScreen extends StatelessWidget {
  const AboutMajalaatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('About Majalaat', style: GoogleFonts.almarai()),
              PopUpMenuWidget(
                currentPage: "about",
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 23),
            child: Column(
              children: [
                Text('Majalaat',
                    style: GoogleFonts.almarai(
                        fontSize: 50, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 40,
                ),
                Text(
                    textAlign: TextAlign.center,
                    'A community initiative aimed at assisting everyone seeking education in our community to choose the most suitable academic field and institution based on their interests, aspirations, capabilities, and circumstances.',
                    style: GoogleFonts.almarai(fontSize: 19, height: 1.2)),
                SizedBox(
                  height: 40,
                ),
                Container(
                    height: 0.8,
                    width: size.width * 0.7,
                    color: Colors.grey.shade400),
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Choosing the academic and professional field is one of life\'s significant decisions. It\'s no secret how much confusion, anxiety, and uncertainty come with such a choice.\n\n' +
                      'Perhaps one of the best ways to help those seeking education is to gain a clearer picture of the field they are considering for their studies, consult with people around them, and seek their advice.\n\n' +
                      'However, finding the right individuals to consult with is not always easy. Academic fields and academic institutions are highly diverse, and often, individuals find it challenging to locate people who have studied a specific field at the educational institution they are interested in or individuals whose circumstances resemble theirs. Or perhaps they are seeking answers about the nature of work in the field or other matters.\n\n' +
                      'Hence came the idea of "Majalaat," which is a platform designed to assist everyone seeking education in our community in choosing the most suitable academic field and institution based on their interests, aspirations, capabilities, and circumstances. The first version of the platform allows direct networking and communication with individuals who have experienced similar situations to those who are on the verge of starting their journey, or those who are currently studying a subject in an institution they are considering joining, or individuals who have graduated and worked in a field for several years and can provide advice about working in the field and its nature.\n\n' +
                      'Of course, a platform like this cannot succeed or even function without the collective efforts of the many benevolent individuals within our community. Those who offer advice and counsel are you, esteemed academics. We urge all of you to contribute by registering in this form and being a source of assistance to future students and academics. Together, let\'s create a better future for every individual seeking education in our community and for our entire society!\n\n' +
                      'And who knows, perhaps a minute of your time spent offering advice to someone seeking education will leave a significant impact on their journey and be recorded as a great deed in your life\'s ledger.\n\n' +
                      'May God bless you all, the Majalaat team.',
                  style: GoogleFonts.almarai(fontSize: 17, height: 1.3),
                  // textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    height: 0.8,
                    width: size.width * 0.7,
                    color: Colors.grey.shade400),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Notes:",
                      style: GoogleFonts.almarai(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6, right: 8),
                          child: Icon(Icons.circle, size: 12),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            'You can modify your data at any time after submitting the form by logging into the same form using your email.\n',
                            style:
                                GoogleFonts.almarai(fontSize: 15, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6, right: 8),
                          child: Icon(Icons.circle, size: 12),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            'To ensure not to inconvenience you, our dear volunteers, the system limits the number of people that a student can communicate with each week.',
                            style:
                                GoogleFonts.almarai(fontSize: 15, height: 1.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                lastSection(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget lastSection(var context) {
  return Column(
    children: [
      Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Text(
            "Additional Links:",
            style:
                GoogleFonts.almarai(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(right: 13),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6, right: 8),
                child: Icon(Icons.circle, size: 12),
              ),
              SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PrivacyPolicyScreen()),
                  );
                },
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Text(
                      'Privacy Policy',
                      style: GoogleFonts.almarai(
                        fontSize: 15,
                        height: 1.3,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(right: 13),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6, right: 8),
                child: Icon(Icons.circle, size: 12),
              ),
              SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TermsOfUseScreen()),
                  );
                },
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Text(
                      'Terms of Use',
                      style: GoogleFonts.almarai(
                        fontSize: 15,
                        height: 1.3,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
