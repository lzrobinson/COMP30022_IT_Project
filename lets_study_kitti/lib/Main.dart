import 'package:flutter/material.dart';
import 'package:lets_study_kitti/home_page/home_page.dart';
import 'package:lets_study_kitti/routes.dart';
import 'package:lets_study_kitti/screens/email_verification.dart';
import 'package:lets_study_kitti/screens/login_page.dart';
import 'package:lets_study_kitti/screens/review_form_page.dart'
    show ReviewFormPage;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lets_study_kitti/screens/review_form_page.dart';
import 'package:lets_study_kitti/screens/sign_up_page.dart';
import 'package:lets_study_kitti/screens/subject_page.dart' show SubjectPage;
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


//main
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.homePage,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      routes: {
        Routes.loginPage: (BuildContext context) => const LoginPage(),
        Routes.reviewFormPage: (BuildContext context) => const ReviewFormPage(),
        Routes.signUpPage: (BuildContext context) => const SignUpPage(),
        Routes.subjectPage: (BuildContext context) =>
            const SubjectPage(subjectCode: '30023'),
        Routes.homePage: (BuildContext context) => const HomePage(),
        Routes.verifyEmailPage: (BuildContext context) =>
            const VerificationPage(),
      },
      title: 'Flutter FormBuilder Demo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        FormBuilderLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: FormBuilderLocalizations.delegate.supportedLocales,
    );
  }
}

ReviewFormPage reviewFormPage = const ReviewFormPage();
SubjectPage subjectPage = const SubjectPage(subjectCode: '30023');
LoginPage loginPage = const LoginPage();
SignUpPage signUpPage = const SignUpPage();
