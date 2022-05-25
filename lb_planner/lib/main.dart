import 'dart:async';

import 'package:catcher/catcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lb_planner/assets.dart';
import 'package:lb_planner/helpers.dart';
import 'package:lb_planner/routes.dart';
import 'package:lb_planner/widgets.dart';
import 'package:lbplanner_api/lbplanner_api.dart';
import 'package:nekolib_ui/core.dart';
import 'package:nekolib_utils/log.dart';
import 'package:window_manager/window_manager.dart';

/// Navigator key for [Catcher].
final kNavigator = GlobalKey<NavigatorState>();

void main() async {
  Logger.init(autoSave: true, appStoragePath: (await Disk.appDir).path);

  // Randomly selected outside of build for consistency of the animtion when applying the theme
  var animation = (kLoadingAnimations.toList()..shuffle()).first;

  Catcher(
    navigatorKey: kNavigator,
    releaseConfig: LpReportMode.config,
    debugConfig: LpReportMode.config,
    runAppFunction: () async {
      WidgetsFlutterBinding.ensureInitialized();
      await windowManager.ensureInitialized();

      runThemedApp(
        appBuilder: App.builder,
        title: 'LB Planner',
        appIcon: LpLogo.svg,
        // ignore: no-magic-number
        minSize: Size(1200, 700),
        onLoad: load,
        windowHandleColor: () => primaryColor,
        loadingWidgetBuilder: (_) => LpLoadingIndicator.rive(animation: animation),
      );
    },
  );
}

/// Loads data from disk and returns a [Future] that completes when the data is loaded.
Future<void> load() async {
  await UserDisk.loadUser();

  if (UserDisk.data != null && !UserDisk.data!.loading) {
    applyUserTheme(UserDisk.data!);
  }

  // await Future.delayed(Duration(seconds: 500));

  await kUpdater.update();
}

/// Main app widget.
class App extends StatelessWidget {
  /// Main app widget.
  const App({Key? key}) : super(key: key);

  /// Builder for convinience.
  static App builder(context) => App();

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(
        builder: (context, ref, _) {
          var connected = ref.watch(internetProvider);
          var user = ref.read(userProvider);

          return MaterialApp(
            navigatorKey: kNavigator,
            theme: appStyle,
            localizationsDelegates: const [
              LocaleNamesLocalizationsDelegate(),
              ...AppLocalizations.localizationsDelegates,
            ],
            navigatorObservers: [kRouteObserver],
            supportedLocales: AppLocalizations.supportedLocales,
            debugShowCheckedModeBanner: false,
            initialRoute: !connected
                ? OfflineRoute.routeName
                : user.restricted
                    ? LoginRoute.routeName
                    : DashboardRoute.routeName,
            onGenerateRoute: RouteWrapper.gnerateRoute,
          );
        },
      ),
    );
  }
}
