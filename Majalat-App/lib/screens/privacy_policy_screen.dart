// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../widgets/popup_menu_widget.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String privacyPolicy = '''
privacy policy
Effective date: January 2021

the introduction
We respect the privacy rights of our visitors and users and acknowledge the importance of protecting the personal information collected about them, so we recommend that you read the terms of this policy very carefully that relate to the privacy of your information, which explains how the website (https://majalaat.com) (hereinafter referred to as “ domains ” " or the " Site " or the " Platform ) collect, use and share personal information and other actions relating to your information. By accessing or using Majalat Services, you expressly agree to be bound by the terms and conditions of this Policy set out below, which is part of the Majalat Terms and Conditions, if If you do not agree to abide by the terms of this policy, please do not use our site.

Scope of privacy
This policy applies to personal information that you provide or is collected through Majalat platform services. It includes all content and pages within the website, and does not apply to any external sites or links or any information that we obtain from you in other ways, and we do not bear any responsibility for any information. Personal information you may provide to these third parties through the Site.

Data collection
We and our service partners collect various types of information related to Majalat services, including personal information that you provide to us directly if you register an account or use the services. The information collection process includes the following:

Joining and registration information: We may collect some personal information from you when you submit a request to join or register for the site. This information may include personal data such as (personal name, last name, email, phone number, and country), but not limited to.

Technical information: Majalat website, like many other websites on the Internet, collects information about website visitors through any device; The host server records your Internet Protocol (IP) address or the device you are using from the Internet Service Provider (ISP), the type of Internet browser you are using, the browser version, the Internet Service Provider, the visitor’s country, the address (URL) and the referring pages to Our site, the pages of our services that you visit, the date and time of the visit, the number of clicks, and other information that is collected and used to run and manage the site, know the trends of visitors, and for the purposes of analyzing and improving quality. All of this information is kept in complete confidentiality by us, and remains within the scope of development and improvement of our site. Just.

Offline information: We may collect personal information in an offline manner. For example, when communicating with a user, you may be directed to a link to their WhatsApp number.

Usage and interaction information: Majalat website, like many other sites on the Internet, collects information about usage and interaction during the use of the site.

Cookies: Cookies allow a web server to transfer data to a computer or device for storage and other purposes. If you do not want information collected through the use of cookies, you can stop or disable the use of cookies. For more information about our use of cookies, please review our Cookie Policy.

Contact information: We may collect your personal information when you contact us regarding any inquiry while using the site or our services or communicating or contacting us. This information includes data such as name, phone number, email, and order details.

Other Information You Provide to Us: You may voluntarily provide us with additional information about yourself, including, but not limited to: name, address, gender, country, service preferences, type of smartphone, technical information about a user's connection methods to the Website, and other Similar information that you provided to us by filling out the forms available on the Majalat website or by communicating with us by phone, email, or any other means.

Use of information
The information domains website is used for the following purposes:

To create accounts and communicate with you about the Services.

To administer the Site, monitor its use, and detect, prevent, and address technical problems.

To provide, personalize and improve your experience with our Services and to develop new ones.

To improve and enhance the safety and security of our services, and to prevent the use of our services in any illegal or fraudulent ways.

To provide the opportunity to communicate with us or communicate with other users.

To provide technical support services, respond to your inquiries, questions, and comments, and fulfill your requests.

For marketing, promotional, research, statistical, market research and survey purposes.

To measure or understand performance, such as the effectiveness of advertising we serve to you and others, and to deliver advertising that is relevant to you.

For our business purposes, such as analyzing data, improving content, and operating and expanding our business activities.

To notify you of administrative information such as information about the website or changes to the terms and conditions.

Share information
Majalat maintains at all times the confidentiality and privacy of your personal data that it obtains, as your personal data and information are considered an important part of our business, but we may share the information with other parties who provide services or functions on our behalf, including business analytics, customer service, and marketing. Public relations, survey distribution, and fraud prevention. We may also authorize third-party vendors to collect information on our behalf, including, for example, as necessary to operate features of the Site, or to facilitate the delivery of online advertising tailored to you, where third-party vendors have access to the information and may collect it only when Need to perform their jobs.

We may share your information, as necessary, for the following purposes:

To comply with legal process or to comply with lawful or enforceable subpoenas or court orders.

To respond to requests from public, government, law enforcement and data protection authorities.

To protect our rights, privacy, safety, or property, and/or the rights of you or others.

We may also share your personal information for advertising and marketing purposes with third parties. Please note that we do not control the policies and practices of these third parties, and you should review them for their own practices.

Retain information
We retain users' personal information for as long as necessary and for the purposes specified in this policy, and use it to the extent necessary to comply with our legal obligations, resolve disputes, and enforce our legal agreements and policies. We also retain some of your personal information associated with accounts in our archives when you continue to use our services, including for internal analysis purposes, Or to enhance the security or improve the functionality of our Services. The periods for which we retain your information depend on the purpose for which we collect and use it.

Data security and protection
The security of your data is important to us, so we seek to protect and preserve all personal information of users under our control and not to disclose it in violation of the applicable policy on the Majalat website.

We take all necessary and appropriate security measures to protect personal information under our control from loss, destruction, alteration, unauthorized disclosure, access, or unintentional and unlawful use. However, this level of protection may not be 100% effective unless you follow your own security policies.

If you are concerned that your dealings with us are not secure, please contact us and let us know.

Disclosure of information
We do not sell, trade, or otherwise transfer your personal information to any outside parties, not including trusted third parties who assist us in operating the Site, conducting our business, or servicing you, so long as those parties agree to keep this information confidential.

In the event of any transition or change in our business, such as a merger, acquisition by another company, or sale of all or a portion of assets, user accounts and data will be part of this process.

Responsibility for providing data
You acknowledge that you provide your information and data at your personal risk, and in the event that you provide us with any data relating to others in a false or fraudulent manner, you bear legal responsibility towards us and before the competent authorities and towards the person harmed by providing us with that data, with your obligation to pay all appropriate compensation.

You understand and agree that the Site controls the data it controls itself, and therefore we have no control over any data you provide to another party.

Marketing materials
We may send you marketing materials about the services we provide that may be of interest to you, as well as other information in the form of notices, newsletters, offers or other features that we think will be important to you, and if at any time you wish not to receive any marketing materials from us, you can unsubscribe from Marketing communications you have received or notified to us through the “Contact Us” section. and Explain that you do not wish to receive any marketing materials from us.

Emails
Majalat may send emails related to the Site and Services to our registered mail. If you do not wish to receive such emails, you may click on the unsubscribe link at the bottom of the email sent by us to cancel and disable marketing email communications.

Links to other parties
Our site may contain external links or advertisements to sites belonging to third parties that we do not own and are not under our management. If you click on those links, you will be referred to these external sites from which those links were established on our site. The operators of those sites may collect information about you and use it by them in accordance with their policy. Their applicable privacy policy, which may differ from ours. Therefore, we do not interfere in preparing these policies and do not provide any approval regarding them. We hope that you review and read the privacy policy approved on external linked sites before using our site.

Privacy Policy Changes
Majalat reserves the right to make any amendments or changes to this policy if necessary and whenever appropriate from time to time in its sole discretion; To keep up with legal requirements and the way he runs his business. This policy will be implemented once it is published on the website. By continuing to use our site after such modifications are made, you accept and agree to abide by the modifications. Please review this policy regularly for the most current version of this privacy policy.

All modifications and changes to the Privacy Policy will be effective immediately upon posting, and your use of our Services after modifying or changing any of these materials or publishing the updated version means your acceptance of all such modifications.

Cookie Policy
Cookies are strictly necessary for our website to function and are used to help us understand how you interact with our website so that we can improve it, operate our services and provide you with a better experience. If you decide to disable these cookies, you may not be able to access parts of our website, or access the secure area. Our own.

What are cookies?
They are small text files that often include a unique identifier that are transferred through the website to the hard disk of your computer, mobile phone or tablet by the web server, so that the website can remember some information about your browsing activity or your identity every time you visit the website. . Cookies will collect information relating to your use of our services and help us tailor our services to your interests. They also help us analyze your use of our services and help us provide you with a better experience.

What purpose is cookie information used for?
The purpose of using cookie information is as follows:

Recognizing your device when you visit the site, and tracking you when you browse the site.

Monitor and analyze both the performance, operation and impact of our advertising.

Enable users to view content and advertisements that are tailored to their needs.

To improve, manage and analyze the use of the Site.

For security needs and fraud protection purposes.

What types of cookies do we use?

Session cookies: These cookies are used to operate our website, and to identify and prevent security risks. For example, cookies that enable you to log in to secure areas of our site, and these cookies to store your session information to prevent others from changing your password without your username and password.

Preference cookies: We use these cookies to remember your settings and preferences, and to enhance your experience on our website. For example, we may use these cookies to remember your preferences.

Security and performance cookies: We use these cookies to collect information about how you use our site, monitor site performance, and improve the performance of the site, our services, and our experiences. For example, we can use these cookies to recognize and count the number of visitors and learn more about which features our users use most and which features may need some modifications.

Advertising cookies and targeting purposes: We use these cookies to deliver ads, and track the effectiveness of our advertising campaigns for both our services and website. We can use these cookies to record your visit on the site, the pages you have viewed and the links you have followed. We may share this information with our third-party advertising partners and deliver relevant advertisements on other sites.

Third party cookies

External site cookies may be placed by services appearing on those external sites. Domains does not have any control over these files. These may be, for example, cookies placed by social media sites. For more information about third-party cookies, we suggest you visit the third-party websites.

Contact us
If you have any questions or inquiries about our Privacy Policy or Cookie Policy, you can contact us via:

▪ Email: majalaat@gmail.com

You acknowledge that you have read the terms of this policy and agree to abide by all of its terms and conditions.

All rights reserved © Majalat Platform 2021
''';
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
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Container(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: MarkdownBody(
              data: privacyPolicy,
            ),
          )))),
    );
  }
}
