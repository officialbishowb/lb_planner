import 'package:desktop/widgets/views/Admin/admin_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:lb_planner/ui.dart';

// ignore: must_be_immutable
class AdminLogin extends StatefulWidget {
  AdminLogin({Key? key}) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  String password = "";
  AdminState state = AdminState.AdminLogin;

  _showAdminLogin() {
    setState(() {
      state = AdminState.AdminLogin;
    });
  }

  _showAdminPanel() {
    setState(() {
      state = AdminState.AdminPanel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return state == AdminState.AdminLogin
        ? NcView.route(
            title: ("Admin Login"),
            content: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesome5Solid.fingerprint,
                            size: 60,
                            color: NcThemes.current.textColor,
                          ),
                          NcSpacing.xl(),
                          NcMaterialInputField(
                            obscureText: true,
                            onValueChanged: (value) => password = value,
                            placeholder: 'Password',
                            prefixIcon: Icon(
                              FontAwesome5Solid.lock,
                              color: NcThemes.current.textColor,
                              size: 20,
                            ),
                          ),
                          NcSpacing.medium(),
                          NcButton(
                            text: "LOGIN",
                            onTap: _showAdminPanel,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        : AdminPanel();
  }
}

enum AdminState { AdminLogin, AdminPanel }
