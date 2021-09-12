import 'package:animations/animations.dart';
import 'package:desktop/widgets/sidebar/sidebarItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:lb_planner/ui.dart';

class Sidebar extends StatefulWidget {
  Sidebar({Key? key, required this.dashboard, required this.calendar, required this.coursesOverwiev, required this.planner, required this.admin, required this.settings, required this.onLogout}) : super(key: key);

  final Widget dashboard;
  final Widget calendar;
  final Widget coursesOverwiev;
  final Widget planner;

  final Widget admin;
  final Widget settings;
  final Function() onLogout;

  static const int topEnd = 4;
  static final List<IconData> icons = [
    FontAwesome5Solid.bars,
    Icons.date_range,
    Icons.school_sharp,
    Icons.timelapse,
    FontAwesome5Solid.fingerprint,
    FontAwesome5Solid.cog,
    Feather.log_out,
  ];

  List<Widget> get views => [dashboard, calendar, coursesOverwiev, planner, admin, settings];

  static const double width = 70;

  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  int current = 0;

  void _setCurrentPage(int i) {
    setState(() {
      current = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(color: NcThemes.current.primaryColor, boxShadow: ncShadow),
          width: Sidebar.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  NcSpacing.small(),
                  NcLogo(
                    height: 45,
                  ),
                  for (int i = 0; i < Sidebar.topEnd; i++) _createElement(i),
                  // for (int i = 0; i <= Sidebar.topEnd; i++) Text(i.toString()),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = Sidebar.topEnd; i < Sidebar.icons.length; i++) _createElement(i),
                  // for (int i = Sidebar.topEnd; i < widget.views.length - 1; i++) Text(i.toString()),
                  // SidebarItem(icon: Sidebar.icons.last, isSelected: false, onTap: widget.onLogout),
                  NcSpacing.small(),
                ],
              )
            ],
          ),
        ),
        NcSpacing.medium(),
        Expanded(
          child: PageTransitionSwitcher(
            // duration: Duration(seconds: 2),
            transitionBuilder: (child, animationIn, animationOut) => FadeThroughTransition(
              fillColor: NcThemes.current.secondaryColor,
              animation: animationIn,
              secondaryAnimation: animationOut,
              child: child,
            ),
            child: widget.views[current],
          ),
        ),
        NcSpacing.small(),
      ],
    );
  }

  Widget _createElement(int i) {
    return SidebarItem(icon: Sidebar.icons[i], isSelected: i == current, onTap: i == Sidebar.icons.length - 1 ? widget.onLogout : () => _setCurrentPage(i));
  }
}
