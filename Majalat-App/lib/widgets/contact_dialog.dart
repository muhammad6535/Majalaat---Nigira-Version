// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDialog extends StatefulWidget {
  final String name;
  final String howToContact;
  final String phoneNumber;
  final String volEmail;
  const ContactDialog(
      {required this.name,
      required this.howToContact,
      required this.phoneNumber,
      required this.volEmail,
      Key? key})
      : super(key: key);

  @override
  _ContactDialogState createState() => _ContactDialogState();
}

class _ContactDialogState extends State<ContactDialog> {
  bool showInformation = false;

  void toggleInformation() {
    setState(() {
      showInformation = !showInformation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Contact Confirmation",
                style: GoogleFonts.almarai(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
      contentPadding: const EdgeInsets.all(20),
      children: [
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "For your convenience, a pre-composed message is included when you press the contact button, allowing you to send it directly.",
              style: GoogleFonts.almarai(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "Don't worry, the message is not sent automatically. You can review and edit it before sending.",
              style: GoogleFonts.almarai(fontSize: 16, letterSpacing: 0.5),
            ),
            SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: toggleInformation,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                padding: EdgeInsets.symmetric(horizontal: 11, vertical: 10),
                width: MediaQuery.of(context).size.width * 0.95,
                color: Colors.grey.shade100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.info,
                          color: Colors.grey.shade500,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Tips Before Contacting",
                          style: GoogleFonts.almarai(),
                        ),
                      ],
                    ),
                    Icon(
                      showInformation
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Colors.grey.shade500,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: showInformation ? 135 : 0,
                width: MediaQuery.of(context).size.width * 0.91,
                child: Text(
                    "The team and volunteers of Majalat are here to assist you. Please respect their time and avoid contacting them for questions that can easily be answered with a simple internet search (e.g., admission rates).",
                    style: GoogleFonts.almarai(
                        height: 1.3,
                        letterSpacing: 0.5,
                        color: Colors.grey.shade800,
                        fontSize: 16))),
            buildElevatedButton()
          ],
        )
      ],
    );
  }

  Widget buildElevatedButton() {
    bool isWhatsApp = widget.howToContact.contains("الوتسأب");
    String firstName = widget.name.split(" ").first;
    String firstText =
        "Hello $firstName, I've reached out to you through the Majalat website and would like to consult with you regarding your field of study and work. Please let me know a suitable time for communication. Thank you very much!";

    sendWhatsApp() async {
      Uri url =
          Uri.parse("https://wa.me/972${widget.phoneNumber}?text=$firstText");
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }

    sendEmail() async {
      Email email = Email(
          body: firstText,
          subject: "Majalat - Help Needed",
          recipients: [widget.volEmail],
          isHTML: false);
      await FlutterEmailSender.send(email);
    }

    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          isWhatsApp ? sendWhatsApp() : sendEmail();
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isWhatsApp ? FontAwesomeIcons.whatsapp : Icons.email,
              color: isWhatsApp ? Colors.white : Colors.grey.shade600,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              isWhatsApp
                  ? "WhatsApp Message to $firstName"
                  : "Email to $firstName",
              style: GoogleFonts.almarai(
                  color: isWhatsApp ? Colors.white : Colors.grey.shade800),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: isWhatsApp
              ? Color.fromARGB(255, 37, 211, 102)
              : Color(0xffffc107),
        ),
      ),
    );
  }
}
