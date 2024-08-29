import 'package:flutter/material.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          const CustomAppbar(
            title: 'Privacy Policy',
            settings: true,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 12),
              children: const [
                _BodyCard(
                  children: [
                    _TextBold('1. Introduction'),
                    _Text(
                      'At [App Name], we are committed to protecting your privacy. This Privacy Policy outlines how we collect, use, disclose, and safeguard your information when you use our mobile application. Please read this policy carefully to understand our practices regarding your personal data. By using the app, you agree to the collection and use of information in accordance with this Privacy Policy.',
                    ),
                    _TextBold('2. Information We Collect'),
                    _Text(
                      'We collect several types of information from and about users of our app, including:\n• Personal Information: When you create an account or update your profile, we may collect personal details such as your name, email address, phone number, and any other information you provide.\n• Usage Data: We may collect information about how you access and use the app, including your device information, IP address, browser type, operating system, pages visited, and the time and date of your visit.\n• ',
                    ),
                    _TextBold('3. Account Registration'),
                    _Text(
                      'To access certain features of the app, you may need to create an account. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account. You agree to provide accurate and up-to-date information during registration and to update this information if it changes.',
                    ),
                    _TextBold('4. User Content'),
                    _Text(
                      'You may submit reviews, photos, ratings, and other content ("User Content") to the app. By submitting User Content, you grant Sweet Helper Cafe a non-exclusive, royalty-free, worldwide, transferable, and sublicensable license to use, reproduce, modify, adapt, publish, translate, distribute, and display such content in connection with the app. You are solely responsible for your User Content. You agree not to post any content that is unlawful, defamatory, abusive, harassing, or otherwise objectionable. Sweet Helper Cafe reserves the right to remove any content that violates these Terms or is deemed inappropriate by us.',
                    ),
                    _TextBold('5. Prohibited Activities'),
                    _Text(
                      'You agree not to engage in any of the following activities:\n• Using the app for any illegal or unauthorized purpose.\n• Harassing, threatening, or defaming other users.\n• Posting misleading, false, or inaccurate reviews.\n• Attempting to gain unauthorized access to other users accounts.\n• Interfering with the operation of the app, including hacking, sending spam, or uploading malicious software.',
                    ),
                    _TextBold('6. Intellectual Property'),
                    _Text(
                      'All intellectual property rights in the app, including but not limited to software, design, graphics, and text, are owned by Sweet Helper Cafe or its licensors. You may not copy, modify, distribute, or reverse engineer any part of the app without prior written consent from Sweet Helper Cafe.',
                    ),
                    _TextBold('7. Termination'),
                    _Text(
                      'We reserve the right to terminate or suspend your account at any time, without notice, if you violate these Terms or engage in any activity that is harmful to the app or other users. Upon termination, your right to use the app will cease immediately.',
                    ),
                    _TextBold('8. Disclaimer of Warranties'),
                    _Text(
                      'Sweet Helper Cafe is provided "as is" and "as available" without warranties of any kind, either express or implied. We do not guarantee that the app will be error-free, secure, or uninterrupted. Your use of the app is at your own risk.',
                    ),
                    _TextBold('9. Limitation of Liability'),
                    _Text(
                      'To the fullest extent permitted by law, Sweet Helper Cafe shall not be liable for any indirect, incidental, special, or consequential damages arising out of or in connection with your use of the app. Our total liability to you for any claims related to the app shall not exceed the amount you paid to use the app, if any.',
                    ),
                    _TextBold('10. Changes to the Terms'),
                    _Text(
                      'We may update these Terms from time to time. We will notify you of any significant changes by posting the new Terms on the app. Your continued use of the app after the changes take effect indicates your acceptance of the revised Terms.',
                    ),
                    _TextBold('11. Governing Law'),
                    _Text(
                      'These Terms shall be governed by and construed in accordance with the laws of [Your Country/State], without regard to its conflict of law principles.',
                    ),
                    _TextBold('12. Contact Us'),
                    _Text(
                      'If you have any questions about these Terms, please contact us at [Support Email Address].',
                    ),
                  ],
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 2. Information We Collect
// We collect several types of information from and about users of our app, including:
// Personal Information: When you create an account or update your profile, we may collect personal details such as your name, email address, phone number, and any other information you provide.
// Usage Data: We may collect information about how you access and use the app, including your device information, IP address, browser type, operating system, pages visited, and the time and date of your visit.
// Location Data: With your consent, we may collect and process information about your location to provide location-based services, such as recommending nearby cafés.
// User Content: We collect the content you submit, including reviews, ratings, comments, and photos.
// 3. How We Use Your Information
// We may use the information we collect for various purposes, including:
// To Provide and Improve the App: We use your information to operate, maintain, and improve the app’s functionality and features.
// To Personalize Your Experience: We may use your data to tailor the app's content and recommendations to your preferences and location.
// To Communicate with You: We may use your contact information to send you updates, promotional materials, or important notices regarding your account or the app.
// To Ensure Security: We use your information to monitor and improve the security of the app, including detecting and preventing fraud, unauthorized activities, and other harmful behavior.
// For Analytics: We analyze how users interact with the app to understand trends, user behavior, and to improve our services.
// 4. Sharing Your Information
// We may share your information with:
// Service Providers: We may share your data with third-party service providers who assist us in operating the app, such as hosting services, analytics providers, and customer support.
// Business Transfers: If [App Name] is involved in a merger, acquisition, or sale of assets, your information may be transferred as part of that transaction.
// Legal Compliance: We may disclose your information to comply with legal obligations, such as responding to subpoenas, court orders, or other legal processes.
// With Your Consent: We may share your information for other purposes with your explicit consent.
// 5. Data Security
// We take reasonable measures to protect your information from unauthorized access, use, or disclosure. However, please be aware that no method of transmitting or storing data is completely secure, and we cannot guarantee the absolute security of your information.
// 6. Your Choices
// Account Information: You can review and update your account information at any time by accessing your profile settings in the app.
// Location Data: You can control the app’s access to your location information through your device’s settings.
// Marketing Communications: You can opt-out of receiving promotional emails by following the unsubscribe instructions provided in the email or by adjusting your account settings.
// 7. Children’s Privacy
// Our app is not intended for use by children under the age of 13. We do not knowingly collect personal information from children under 13. If we learn that we have collected such information, we will take steps to delete it.
// 8. International Data Transfers
// If you are accessing the app from outside [Your Country/Region], please be aware that your information may be transferred to, stored, and processed in [Your Country/Region], where our servers and central database are located. By using the app, you consent to such transfer.
// 9. Changes to This Privacy Policy
// We may update this Privacy Policy from time to time. We will notify you of any significant changes by posting the new Privacy Policy on the app. Your continued use of the app after the changes take effect constitutes your acceptance of the revised policy.
// 10. Contact Us
// If you have any questions or concerns about this Privacy Policy, please contact us at [Support Email Address].

class _BodyCard extends StatelessWidget {
  const _BodyCard({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class _TextBold extends StatelessWidget {
  const _TextBold(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        title,
        style: const TextStyle(
          color: AppColors.black,
          fontSize: 12,
          fontFamily: Fonts.bold,
        ),
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        height: 1.8,
        color: AppColors.black,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: Fonts.medium,
      ),
    );
  }
}
