import 'package:animations/animations.dart';
import 'package:desktop/generated/l10n.dart';

import 'package:desktop/widgets/views/admin/admin.dart';
import 'package:desktop/widgets/views/calendar/calendar.dart';
import 'package:desktop/widgets/views/courses_overview/course_overview.dart';
import 'package:desktop/widgets/views/dashboard/dashboard.dart';
import 'package:desktop/widgets/views/login/login.dart';
import 'package:desktop/widgets/views/select_courses/select_courses.dart';
import 'package:desktop/widgets/views/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:lb_planner/data.dart';
import 'package:lb_planner/ui.dart';

import 'widgets/sidebar/sidebar.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeState state = HomeState.Sidebar;

  void handleLogin(Token token) {
    //TODO: save user to disk
    //TODO: load user theme
    setState(() {
      //TODO: check if user is new ? show select courses : show dashboard
      state = HomeState.SelectCourses;
    });
  }

  logout() {
    setState(() {
      state = HomeState.Login;
    });
  }

  submitCourseSelection() {
    // TODO: fetch selected courses
    // TODO save selection to server
    setState(() {
      state = HomeState.Sidebar;
    });
  }

  @override
  void initState() {
    super.initState();
    NcThemes.onCurrentThemeChange = () => setState(() => User.current.settings.theme = NcThemes.current.name);

    Guard.init(context);

    Guard.checkForRecentCrash(context);
  }

  @override
  Widget build(BuildContext context) {
    Guard.setLabelMessages(ignore: S.current.guard_ingore, ohNo: S.current.guard_someThingWentWrong, sendReport: S.current.guard_sendReport);
    Widget child;

    switch (state) {
      case HomeState.Login:
        child = Login(onLoginSuccess: (token) => handleLogin(token));
        break;

      case HomeState.SelectCourses:
        child = SelectCoursesView(onSubmit: submitCourseSelection);

        break;
      case HomeState.Sidebar:
        child = Sidebar(
          dashboard: Dashboard(),
          calendar: CalendarView(),
          coursesOverwiev: CourseOverview(),
          planner: NcCommingSoon(),
          admin: AdminView(),
          settings: SettingView(),
          onLogout: logout,
        );
        break;
      default:
        child = NcLoadingIndicator();
    }

    return Scaffold(
      backgroundColor: NcThemes.current.secondaryColor,
      body: PageTransitionSwitcher(
        transitionBuilder: (child, animationIn, animationOut) => FadeThroughTransition(
          fillColor: NcThemes.current.secondaryColor,
          animation: animationIn,
          secondaryAnimation: animationOut,
          child: child,
        ),
        child: child,
      ),
    );
  }
}

enum HomeState { Login, SelectCourses, Sidebar, None }
