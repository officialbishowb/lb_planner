import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @admin_dashboard_routeName.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get admin_dashboard_routeName;

  /// No description provided for @admin_feedback_headers_lastModified.
  ///
  /// In en, this message translates to:
  /// **'Last modified'**
  String get admin_feedback_headers_lastModified;

  /// No description provided for @admin_feedback_headers_lastModifiedBy.
  ///
  /// In en, this message translates to:
  /// **'Last modified by'**
  String get admin_feedback_headers_lastModifiedBy;

  /// No description provided for @admin_feedback_headers_status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get admin_feedback_headers_status;

  /// No description provided for @admin_feedback_headers_timestamp.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get admin_feedback_headers_timestamp;

  /// No description provided for @admin_feedback_headers_type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get admin_feedback_headers_type;

  /// No description provided for @admin_feedback_headers_user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get admin_feedback_headers_user;

  /// No description provided for @admin_feedback_noFeedback.
  ///
  /// In en, this message translates to:
  /// **'No feedback yet...'**
  String get admin_feedback_noFeedback;

  /// No description provided for @admin_feedback_null.
  ///
  /// In en, this message translates to:
  /// **'-'**
  String get admin_feedback_null;

  /// Display text for the feedback author
  ///
  /// In en, this message translates to:
  /// **'Author: {author}'**
  String admin_feedback_page_author(String author);

  /// No description provided for @admin_feedback_page_comment.
  ///
  /// In en, this message translates to:
  /// **'Comment...'**
  String get admin_feedback_page_comment;

  /// No description provided for @admin_feedback_page_deleteText.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this feedback?\nThis action cannot be undone.'**
  String get admin_feedback_page_deleteText;

  /// No description provided for @admin_feedback_page_deleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete feedback?'**
  String get admin_feedback_page_deleteTitle;

  /// Display text for the feedback id
  ///
  /// In en, this message translates to:
  /// **'ID: #{id}'**
  String admin_feedback_page_id(int id);

  /// Admin feedback page log file text
  ///
  /// In en, this message translates to:
  /// **'Log file: {logfile}'**
  String admin_feedback_page_logFile(String logfile);

  /// No description provided for @admin_feedback_page_markRead.
  ///
  /// In en, this message translates to:
  /// **'Mark as read'**
  String get admin_feedback_page_markRead;

  /// No description provided for @admin_feedback_page_update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get admin_feedback_page_update;

  /// No description provided for @admin_feedback_routeName.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get admin_feedback_routeName;

  /// No description provided for @admin_feedback_status_read.
  ///
  /// In en, this message translates to:
  /// **'READ'**
  String get admin_feedback_status_read;

  /// No description provided for @admin_feedback_status_unread.
  ///
  /// In en, this message translates to:
  /// **'UNREAD'**
  String get admin_feedback_status_unread;

  /// No description provided for @admin_feedback_types_bug.
  ///
  /// In en, this message translates to:
  /// **'Bug'**
  String get admin_feedback_types_bug;

  /// No description provided for @admin_feedback_types_error.
  ///
  /// In en, this message translates to:
  /// **'Typo / Translation error'**
  String get admin_feedback_types_error;

  /// No description provided for @admin_feedback_types_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get admin_feedback_types_other;

  /// No description provided for @admin_feedback_types_suggestion.
  ///
  /// In en, this message translates to:
  /// **'Feature request'**
  String get admin_feedback_types_suggestion;

  /// Display text for the user vintage
  ///
  /// In en, this message translates to:
  /// **'{vintage}'**
  String global_user_vintage(String vintage);

  /// No description provided for @admin_login_login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get admin_login_login;

  /// No description provided for @admin_login_pwPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Enter password...'**
  String get admin_login_pwPlaceholder;

  /// No description provided for @admin_login_routeName.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get admin_login_routeName;

  /// No description provided for @admin_login_wrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Wrong password!'**
  String get admin_login_wrongPassword;

  /// No description provided for @alertDialog_confirm.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get alertDialog_confirm;

  /// No description provided for @calendar_modulesOverview_noCourses.
  ///
  /// In en, this message translates to:
  /// **'No courses enabled...'**
  String get calendar_modulesOverview_noCourses;

  /// No description provided for @calendar_modulesOverview_title.
  ///
  /// In en, this message translates to:
  /// **'Modules overview'**
  String get calendar_modulesOverview_title;

  /// No description provided for @calendar_plan_deleteDeadline.
  ///
  /// In en, this message translates to:
  /// **'Remove deadline'**
  String get calendar_plan_deleteDeadline;

  /// No description provided for @calendar_plan_dropdown_members_addMember.
  ///
  /// In en, this message translates to:
  /// **'Enter name to add members...'**
  String get calendar_plan_dropdown_members_addMember;

  /// No description provided for @calendar_plan_dropdown_members_inviteUsers_btn.
  ///
  /// In en, this message translates to:
  /// **'Invite users'**
  String get calendar_plan_dropdown_members_inviteUsers_btn;

  /// No description provided for @calendar_plan_dropdown_members_inviteUsers_inPlan.
  ///
  /// In en, this message translates to:
  /// **'In your plan'**
  String get calendar_plan_dropdown_members_inviteUsers_inPlan;

  /// No description provided for @calendar_plan_dropdown_members_inviteUsers_invite.
  ///
  /// In en, this message translates to:
  /// **'Invite'**
  String get calendar_plan_dropdown_members_inviteUsers_invite;

  /// No description provided for @calendar_plan_dropdown_members_inviteUsers_invited.
  ///
  /// In en, this message translates to:
  /// **'Invited'**
  String get calendar_plan_dropdown_members_inviteUsers_invited;

  /// No description provided for @calendar_plan_dropdown_members_inviteUsers_reInvite.
  ///
  /// In en, this message translates to:
  /// **'Re-invite'**
  String get calendar_plan_dropdown_members_inviteUsers_reInvite;

  /// No description provided for @calendar_plan_dropdown_members_inviteUsers_search.
  ///
  /// In en, this message translates to:
  /// **'Search for the users you want to invite...'**
  String get calendar_plan_dropdown_members_inviteUsers_search;

  /// No description provided for @calendar_plan_dropdown_members_inviteUsers_title.
  ///
  /// In en, this message translates to:
  /// **'Invite users'**
  String get calendar_plan_dropdown_members_inviteUsers_title;

  /// No description provided for @calendar_plan_dropdown_members_leavePlan_btn.
  ///
  /// In en, this message translates to:
  /// **'Leave plan'**
  String get calendar_plan_dropdown_members_leavePlan_btn;

  /// No description provided for @calendar_plan_dropdown_members_leavePlan_message.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to leave this plan?\n\nYou may get invited again.'**
  String get calendar_plan_dropdown_members_leavePlan_message;

  /// No description provided for @calendar_plan_dropdown_members_leavePlan_title.
  ///
  /// In en, this message translates to:
  /// **'Leave plan?'**
  String get calendar_plan_dropdown_members_leavePlan_title;

  /// No description provided for @calendar_plan_dropdown_members_removeMemver_message.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove this user?\n\nYou can re-invite this user at any given time.'**
  String get calendar_plan_dropdown_members_removeMemver_message;

  /// No description provided for @calendar_plan_dropdown_members_removeMemver_title.
  ///
  /// In en, this message translates to:
  /// **'Remove member from plan?'**
  String get calendar_plan_dropdown_members_removeMemver_title;

  /// No description provided for @calendar_plan_dropdown_members_search.
  ///
  /// In en, this message translates to:
  /// **'Search members...'**
  String get calendar_plan_dropdown_members_search;

  /// No description provided for @calendar_plan_dropdown_members_title.
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get calendar_plan_dropdown_members_title;

  /// No description provided for @calendar_plan_dropdown_modules_clearPlan_btn.
  ///
  /// In en, this message translates to:
  /// **'Clear plan'**
  String get calendar_plan_dropdown_modules_clearPlan_btn;

  /// No description provided for @calendar_plan_dropdown_modules_clearPlan_message.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to clear all deadlines for this plan? This action cannot be undone.'**
  String get calendar_plan_dropdown_modules_clearPlan_message;

  /// No description provided for @calendar_plan_dropdown_modules_clearPlan_title.
  ///
  /// In en, this message translates to:
  /// **'Clear plan?'**
  String get calendar_plan_dropdown_modules_clearPlan_title;

  /// No description provided for @calendar_plan_dropdown_modules_enableEk.
  ///
  /// In en, this message translates to:
  /// **'Show EK'**
  String get calendar_plan_dropdown_modules_enableEk;

  /// No description provided for @calendar_plan_dropdown_modules_search.
  ///
  /// In en, this message translates to:
  /// **'Search modules...'**
  String get calendar_plan_dropdown_modules_search;

  /// No description provided for @calendar_plan_dropdown_modules_title.
  ///
  /// In en, this message translates to:
  /// **'Modules'**
  String get calendar_plan_dropdown_modules_title;

  /// No description provided for @calendar_plan_dropdown_planName_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Epic name for your plan here...'**
  String get calendar_plan_dropdown_planName_placeholder;

  /// No description provided for @calendar_plan_friday.
  ///
  /// In en, this message translates to:
  /// **'Fri'**
  String get calendar_plan_friday;

  /// No description provided for @calendar_plan_monday.
  ///
  /// In en, this message translates to:
  /// **'Mon'**
  String get calendar_plan_monday;

  /// No description provided for @calendar_plan_saturday.
  ///
  /// In en, this message translates to:
  /// **'Sat'**
  String get calendar_plan_saturday;

  /// No description provided for @calendar_plan_sunday.
  ///
  /// In en, this message translates to:
  /// **'Sun'**
  String get calendar_plan_sunday;

  /// Text displaying how many tasks are planned for a day
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{-} =1{1 Task} other{{count} Tasks}}'**
  String calendar_plan_tasks(num count);

  /// No description provided for @calendar_plan_thursday.
  ///
  /// In en, this message translates to:
  /// **'Thu'**
  String get calendar_plan_thursday;

  /// No description provided for @calendar_plan_title.
  ///
  /// In en, this message translates to:
  /// **'Plan'**
  String get calendar_plan_title;

  /// No description provided for @calendar_plan_tuesday.
  ///
  /// In en, this message translates to:
  /// **'Tue'**
  String get calendar_plan_tuesday;

  /// No description provided for @calendar_plan_wednesday.
  ///
  /// In en, this message translates to:
  /// **'Wed'**
  String get calendar_plan_wednesday;

  /// No description provided for @calendar_routeName.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get calendar_routeName;

  /// No description provided for @dashboard_exams_noExams.
  ///
  /// In en, this message translates to:
  /// **'No upcoming exams...'**
  String get dashboard_exams_noExams;

  /// No description provided for @dashboard_exams_title.
  ///
  /// In en, this message translates to:
  /// **'Exams'**
  String get dashboard_exams_title;

  /// No description provided for @dashboard_routeName.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard_routeName;

  /// No description provided for @dashboard_statusOverview_noData.
  ///
  /// In en, this message translates to:
  /// **'No data...'**
  String get dashboard_statusOverview_noData;

  /// No description provided for @dashboard_statusOverview_title.
  ///
  /// In en, this message translates to:
  /// **'Status overview'**
  String get dashboard_statusOverview_title;

  /// No description provided for @dashboard_todaysTasks_noTasks.
  ///
  /// In en, this message translates to:
  /// **'Nothing planned for today!'**
  String get dashboard_todaysTasks_noTasks;

  /// No description provided for @dashboard_todaysTasks_title.
  ///
  /// In en, this message translates to:
  /// **'Today\'s tasks'**
  String get dashboard_todaysTasks_title;

  /// No description provided for @dialog_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get dialog_cancel;

  /// No description provided for @dialog_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get dialog_confirm;

  /// No description provided for @guard_dialog_consent.
  ///
  /// In en, this message translates to:
  /// **'Do you want to report this error?'**
  String get guard_dialog_consent;

  /// No description provided for @guard_dialog_description.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occured:'**
  String get guard_dialog_description;

  /// No description provided for @guard_dialog_ingore.
  ///
  /// In en, this message translates to:
  /// **'Ignore'**
  String get guard_dialog_ingore;

  /// No description provided for @guard_dialog_sendReport.
  ///
  /// In en, this message translates to:
  /// **'Send report'**
  String get guard_dialog_sendReport;

  /// No description provided for @guard_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Oops...'**
  String get guard_dialog_title;

  /// No description provided for @login_invalidUsernameOrPassword.
  ///
  /// In en, this message translates to:
  /// **'Invalid username or password'**
  String get login_invalidUsernameOrPassword;

  /// No description provided for @login_login.
  ///
  /// In en, this message translates to:
  /// **'LOGIN'**
  String get login_login;

  /// No description provided for @login_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get login_password;

  /// No description provided for @login_selectCourses_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get login_selectCourses_continue;

  /// No description provided for @login_selectCourses_searchCourses.
  ///
  /// In en, this message translates to:
  /// **'Search courses...'**
  String get login_selectCourses_searchCourses;

  /// No description provided for @login_selectCourses_title.
  ///
  /// In en, this message translates to:
  /// **'Select courses'**
  String get login_selectCourses_title;

  /// No description provided for @login_username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get login_username;

  /// No description provided for @module_openUrl.
  ///
  /// In en, this message translates to:
  /// **'Show on Moodle'**
  String get module_openUrl;

  /// No description provided for @offline_caption.
  ///
  /// In en, this message translates to:
  /// **'Your device is currently not connected to the internet. LB Planner cannot be used when offline.'**
  String get offline_caption;

  /// No description provided for @offline_title.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get offline_title;

  /// No description provided for @plan_routeName.
  ///
  /// In en, this message translates to:
  /// **'Plan'**
  String get plan_routeName;

  /// No description provided for @settings_courses_editCourse_invalidHexCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid color code'**
  String get settings_courses_editCourse_invalidHexCode;

  /// No description provided for @settings_courses_searchCourses.
  ///
  /// In en, this message translates to:
  /// **'Search courses...'**
  String get settings_courses_searchCourses;

  /// No description provided for @settings_feedback.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get settings_feedback;

  /// Error message when feedback submission fails
  ///
  /// In en, this message translates to:
  /// **'We could not process your feedback. Please try again later.\nIf this error persists, please consider opening an issue on GitHub.\n\nThe culprit: \'{error}\''**
  String settings_feedback_failed_message(String error);

  /// No description provided for @settings_feedback_failed_title.
  ///
  /// In en, this message translates to:
  /// **'Error trasmitting feedback'**
  String get settings_feedback_failed_title;

  /// No description provided for @settings_feedback_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Tell us something...'**
  String get settings_feedback_placeholder;

  /// No description provided for @settings_feedback_submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get settings_feedback_submit;

  /// No description provided for @settings_feedback_submitted_message.
  ///
  /// In en, this message translates to:
  /// **'We have successfully received your feedback and are now working on it!'**
  String get settings_feedback_submitted_message;

  /// No description provided for @settings_feedback_submitted_title.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your feedback!'**
  String get settings_feedback_submitted_title;

  /// No description provided for @settings_feedback_title.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get settings_feedback_title;

  /// No description provided for @settings_feedback_types_bug.
  ///
  /// In en, this message translates to:
  /// **'Bug'**
  String get settings_feedback_types_bug;

  /// No description provided for @settings_feedback_types_error.
  ///
  /// In en, this message translates to:
  /// **'Typo / Translation error'**
  String get settings_feedback_types_error;

  /// No description provided for @settings_feedback_types_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get settings_feedback_types_other;

  /// No description provided for @settings_feedback_types_suggestion.
  ///
  /// In en, this message translates to:
  /// **'Feature request'**
  String get settings_feedback_types_suggestion;

  /// No description provided for @settings_general_clearCache_btn.
  ///
  /// In en, this message translates to:
  /// **'Clear cache'**
  String get settings_general_clearCache_btn;

  /// No description provided for @settings_general_clearCache_msg.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to clear the cache?\nThis will remove any locally stored data and you will be logged out.'**
  String get settings_general_clearCache_msg;

  /// No description provided for @settings_general_clearCache_title.
  ///
  /// In en, this message translates to:
  /// **'Clear cache?'**
  String get settings_general_clearCache_title;

  /// No description provided for @settings_general_credits.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settings_general_credits;

  /// No description provided for @settings_general_deleteProfile_btn.
  ///
  /// In en, this message translates to:
  /// **'Delete profile'**
  String get settings_general_deleteProfile_btn;

  /// No description provided for @settings_general_deleteProfile_msg.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your profile?\n\nThis will completely wipe any data stored by LB Planner about you. This cannot be undone, but you can re-register at any given time.'**
  String get settings_general_deleteProfile_msg;

  /// No description provided for @settings_general_deleteProfile_title.
  ///
  /// In en, this message translates to:
  /// **'Delete profile?'**
  String get settings_general_deleteProfile_title;

  /// No description provided for @settings_general_displayTaskCount.
  ///
  /// In en, this message translates to:
  /// **'Display task count'**
  String get settings_general_displayTaskCount;

  /// No description provided for @settings_general_title.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get settings_general_title;

  /// No description provided for @settings_themes.
  ///
  /// In en, this message translates to:
  /// **'Themes'**
  String get settings_themes;

  /// No description provided for @settings_title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_title;

  /// No description provided for @tba_caption.
  ///
  /// In en, this message translates to:
  /// **'This section is still under development.'**
  String get tba_caption;

  /// No description provided for @tba_title.
  ///
  /// In en, this message translates to:
  /// **'TBA'**
  String get tba_title;

  /// No description provided for @update_btn.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update_btn;

  /// No description provided for @update_btnErr.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get update_btnErr;

  /// No description provided for @update_btnInstall.
  ///
  /// In en, this message translates to:
  /// **'Install'**
  String get update_btnInstall;

  /// Update downloading text
  ///
  /// In en, this message translates to:
  /// **'Downloading {filename} ({progress}%)'**
  String update_downloading(String filename, int progress);

  /// No description provided for @update_dialog_noAutoUpdate.
  ///
  /// In en, this message translates to:
  /// **'LB Planner cannot be updated automatically on this platform. Please run the command below to update.'**
  String get update_dialog_noAutoUpdate;

  /// No description provided for @update_dialog_helpNeeded.
  ///
  /// In en, this message translates to:
  /// **'LB Planner needs manual intervention to update. Please run the command below to complete the update.'**
  String get update_dialog_helpNeeded;

  /// No description provided for @update_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Manual steps required!'**
  String get update_dialog_title;

  /// No description provided for @update_installing.
  ///
  /// In en, this message translates to:
  /// **'Installing...'**
  String get update_installing;

  /// Update patch notes title
  ///
  /// In en, this message translates to:
  /// **'{version} Patch notes'**
  String update_patchNotes(String version);

  /// Invite accepted notification text
  ///
  /// In en, this message translates to:
  /// **'{username} has joined your plan!'**
  String user_notifications_inviteAccepted_text(String username);

  /// Invite declined notification text
  ///
  /// In en, this message translates to:
  /// **'{username} has declined your offer to join your plan!'**
  String user_notifications_inviteDeclined_text(String username);

  /// No description provided for @user_notifications_invite_accept.
  ///
  /// In en, this message translates to:
  /// **'Join'**
  String get user_notifications_invite_accept;

  /// No description provided for @user_notifications_invite_accept_confirm_body.
  ///
  /// In en, this message translates to:
  /// **'Your current plan is not empty and will we discarded if you join another plan.\nThis action cannot be undone.'**
  String get user_notifications_invite_accept_confirm_body;

  /// No description provided for @user_notifications_invite_accept_confirm_title.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to join another plan?'**
  String get user_notifications_invite_accept_confirm_title;

  /// No description provided for @user_notifications_invite_accepted.
  ///
  /// In en, this message translates to:
  /// **'You accepted'**
  String get user_notifications_invite_accepted;

  /// No description provided for @user_notifications_invite_decline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get user_notifications_invite_decline;

  /// No description provided for @user_notifications_invite_declined.
  ///
  /// In en, this message translates to:
  /// **'You declined'**
  String get user_notifications_invite_declined;

  /// No description provided for @user_notifications_invite_expired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get user_notifications_invite_expired;

  /// Invite notification text
  ///
  /// In en, this message translates to:
  /// **'You have been invited to join {inviter}\'s plan!'**
  String user_notifications_invite_text(String inviter);

  /// No description provided for @user_notifications_notifications.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No news... You\'re up to date!} =1{1 Notification} other{{count} Notifications}}'**
  String user_notifications_notifications(num count);

  /// User left plan notification text
  ///
  /// In en, this message translates to:
  /// **'{username} has left your plan.'**
  String user_notifications_planLeft_text(String username);

  /// No description provided for @user_notifications_planRemoved.
  ///
  /// In en, this message translates to:
  /// **'You have been removed from {username}\'s plan.'**
  String get user_notifications_planRemoved;

  /// User removed from plan notification text
  ///
  /// In en, this message translates to:
  /// **'You have been removed from {username}\'s plan.'**
  String user_notifications_planRemoved_text(String username);

  /// No description provided for @user_notifications_userRegistered_docs.
  ///
  /// In en, this message translates to:
  /// **'Need help?'**
  String get user_notifications_userRegistered_docs;

  /// User registered notification text
  ///
  /// In en, this message translates to:
  /// **'Welcome, {username}!\n\nIf you happen to face any issues, please let us know.'**
  String user_notifications_userRegistered_text(String username);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
