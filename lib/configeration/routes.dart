import 'package:fire_detector/features/detector_feature/screens/fire_detector_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const fireDetectorScreen = '/';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: fireDetectorScreen,
        builder: (context, state) =>FireDetectorScreen(),
            ),

    ]
  );
}
