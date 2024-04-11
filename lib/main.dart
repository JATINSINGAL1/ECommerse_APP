import 'package:ecommerse/app.dart';
import 'package:ecommerse/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerse/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  // widget binding 
  final WidgetsBinding widgetsBinding=WidgetsFlutterBinding.ensureInitialized();
  // get storage
    await GetStorage.init();
  // await splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding:widgetsBinding);
// initialise firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  runApp(const MyApp());
}
