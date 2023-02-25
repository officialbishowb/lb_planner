import 'package:intl/intl.dart' as intl;

import 'l10n.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get admin_dashboard_routeName => 'Admin';

  @override
  String get admin_feedback_headers_lastModified => 'Last modified';

  @override
  String get admin_feedback_headers_lastModifiedBy => 'Last modified by';

  @override
  String get admin_feedback_headers_status => 'Status';

  @override
  String get admin_feedback_headers_timestamp => 'Created';

  @override
  String get admin_feedback_headers_type => 'Type';

  @override
  String get admin_feedback_headers_user => 'User';

  @override
  String get admin_feedback_noFeedback => 'No feedback yet...';

  @override
  String get admin_feedback_null => '-';

  @override
  String admin_feedback_page_author(String author) {
    return 'Author: $author';
  }

  @override
  String get admin_feedback_page_comment => 'Comment...';

  @override
  String get admin_feedback_page_deleteText => 'Are you sure you want to delete this feedback?\nThis action cannot be undone.';

  @override
  String get admin_feedback_page_deleteTitle => 'Delete feedback?';

  @override
  String admin_feedback_page_id(int id) {
    return 'ID: #$id';
  }

  @override
  String admin_feedback_page_logFile(String logfile) {
    return 'Log file: $logfile';
  }

  @override
  String get admin_feedback_page_markRead => 'Mark as read';

  @override
  String get admin_feedback_page_update => 'Update';

  @override
  String get admin_feedback_routeName => 'Feedback';

  @override
  String get admin_feedback_status_read => 'READ';

  @override
  String get admin_feedback_status_unread => 'UNREAD';

  @override
  String get admin_feedback_types_bug => 'Bug';

  @override
  String get admin_feedback_types_error => 'Typo / Translation error';

  @override
  String get admin_feedback_types_other => 'Other';

  @override
  String get admin_feedback_types_suggestion => 'Feature request';

  @override
  String global_user_vintage(String vintage) {
    return '$vintage';
  }

  @override
  String get admin_login_login => 'Login';

  @override
  String get admin_login_pwPlaceholder => 'Enter password...';

  @override
  String get admin_login_routeName => 'Admin';

  @override
  String get admin_login_wrongPassword => 'Wrong password!';

  @override
  String get alertDialog_confirm => 'OK';

  @override
  String get calendar_modulesOverview_noCourses => 'No courses enabled...';

  @override
  String get calendar_modulesOverview_title => 'Modules overview';

  @override
  String get calendar_plan_deleteDeadline => 'Remove deadline';

  @override
  String get calendar_plan_dropdown_members_addMember => 'Enter name to add members...';

  @override
  String get calendar_plan_dropdown_members_inviteUsers_btn => 'Invite users';

  @override
  String get calendar_plan_dropdown_members_inviteUsers_inPlan => 'In your plan';

  @override
  String get calendar_plan_dropdown_members_inviteUsers_invite => 'Invite';

  @override
  String get calendar_plan_dropdown_members_inviteUsers_invited => 'Invited';

  @override
  String get calendar_plan_dropdown_members_inviteUsers_reInvite => 'Re-invite';

  @override
  String get calendar_plan_dropdown_members_inviteUsers_search => 'Search for the users you want to invite...';

  @override
  String get calendar_plan_dropdown_members_inviteUsers_title => 'Invite users';

  @override
  String get calendar_plan_dropdown_members_leavePlan_btn => 'Leave plan';

  @override
  String get calendar_plan_dropdown_members_leavePlan_message => 'Are you sure you want to leave this plan?\n\nYou may get invited again.';

  @override
  String get calendar_plan_dropdown_members_leavePlan_title => 'Leave plan?';

  @override
  String get calendar_plan_dropdown_members_removeMemver_message => 'Are you sure you want to remove this user?\n\nYou can re-invite this user at any given time.';

  @override
  String get calendar_plan_dropdown_members_removeMemver_title => 'Remove member from plan?';

  @override
  String get calendar_plan_dropdown_members_search => 'Search members...';

  @override
  String get calendar_plan_dropdown_members_title => 'Members';

  @override
  String get calendar_plan_dropdown_modules_clearPlan_btn => 'Clear plan';

  @override
  String get calendar_plan_dropdown_modules_clearPlan_message => 'Are you sure you want to clear all deadlines for this plan? This action cannot be undone.';

  @override
  String get calendar_plan_dropdown_modules_clearPlan_title => 'Clear plan?';

  @override
  String get calendar_plan_dropdown_modules_enableEk => 'Show EK';

  @override
  String get calendar_plan_dropdown_modules_search => 'Search modules...';

  @override
  String get calendar_plan_dropdown_modules_title => 'Modules';

  @override
  String get calendar_plan_dropdown_planName_placeholder => 'Epic name for your plan here...';

  @override
  String get calendar_plan_friday => 'Fri';

  @override
  String get calendar_plan_monday => 'Mon';

  @override
  String get calendar_plan_saturday => 'Sat';

  @override
  String get calendar_plan_sunday => 'Sun';

  @override
  String calendar_plan_tasks(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      zero: '-',
      one: '1 Task',
      other: '$count Tasks',
    );
  }

  @override
  String get calendar_plan_thursday => 'Thu';

  @override
  String get calendar_plan_title => 'Plan';

  @override
  String get calendar_plan_tuesday => 'Tue';

  @override
  String get calendar_plan_wednesday => 'Wed';

  @override
  String get calendar_routeName => 'Calendar';

  @override
  String get dashboard_exams_noExams => 'No upcoming exams...';

  @override
  String get dashboard_exams_title => 'Exams';

  @override
  String get dashboard_routeName => 'Dashboard';

  @override
  String get dashboard_statusOverview_noData => 'No data...';

  @override
  String get dashboard_statusOverview_title => 'Status overview';

  @override
  String get dashboard_todaysTasks_noTasks => 'Nothing planned for today!';

  @override
  String get dashboard_todaysTasks_title => 'Today\'s tasks';

  @override
  String get dialog_cancel => 'Cancel';

  @override
  String get dialog_confirm => 'Confirm';

  @override
  String get guard_dialog_consent => 'Do you want to report this error?';

  @override
  String get guard_dialog_description => 'An unexpected error occured:';

  @override
  String get guard_dialog_ingore => 'Ignore';

  @override
  String get guard_dialog_sendReport => 'Send report';

  @override
  String get guard_dialog_title => 'Oops...';

  @override
  String get login_invalidUsernameOrPassword => 'Invalid username or password';

  @override
  String get login_login => 'LOGIN';

  @override
  String get login_password => 'Password';

  @override
  String get login_selectCourses_continue => 'Continue';

  @override
  String get login_selectCourses_searchCourses => 'Search courses...';

  @override
  String get login_selectCourses_title => 'Select courses';

  @override
  String get login_username => 'Username';

  @override
  String get module_openUrl => 'Show on Moodle';

  @override
  String get offline_caption => 'Your device is currently not connected to the internet. LB Planner cannot be used when offline.';

  @override
  String get offline_title => 'Offline';

  @override
  String get plan_routeName => 'Plan';

  @override
  String get settings_courses_editCourse_invalidHexCode => 'Invalid color code';

  @override
  String get settings_courses_searchCourses => 'Search courses...';

  @override
  String get settings_feedback => 'Feedback';

  @override
  String settings_feedback_failed_message(String error) {
    return 'We could not process your feedback. Please try again later.\nIf this error persists, please consider opening an issue on GitHub.\n\nThe culprit: \'$error\'';
  }

  @override
  String get settings_feedback_failed_title => 'Error trasmitting feedback';

  @override
  String get settings_feedback_placeholder => 'Tell us something...';

  @override
  String get settings_feedback_submit => 'Submit';

  @override
  String get settings_feedback_submitted_message => 'We have successfully received your feedback and are now working on it!';

  @override
  String get settings_feedback_submitted_title => 'Thank you for your feedback!';

  @override
  String get settings_feedback_title => 'Feedback';

  @override
  String get settings_feedback_types_bug => 'Bug';

  @override
  String get settings_feedback_types_error => 'Typo / Translation error';

  @override
  String get settings_feedback_types_other => 'Other';

  @override
  String get settings_feedback_types_suggestion => 'Feature request';

  @override
  String get settings_general_clearCache_btn => 'Clear cache';

  @override
  String get settings_general_clearCache_msg => 'Are you sure you want to clear the cache?\nThis will remove any locally stored data and you will be logged out.';

  @override
  String get settings_general_clearCache_title => 'Clear cache?';

  @override
  String get settings_general_credits => 'About';

  @override
  String get settings_general_deleteProfile_btn => 'Delete profile';

  @override
  String get settings_general_deleteProfile_msg => 'Are you sure you want to delete your profile?\n\nThis will completely wipe any data stored by LB Planner about you. This cannot be undone, but you can re-register at any given time.';

  @override
  String get settings_general_deleteProfile_title => 'Delete profile?';

  @override
  String get settings_general_displayTaskCount => 'Display task count';

  @override
  String get settings_general_title => 'General';

  @override
  String get settings_themes => 'Themes';

  @override
  String get settings_title => 'Settings';

  @override
  String get tba_caption => 'This section is still under development.';

  @override
  String get tba_title => 'TBA';

  @override
  String get update_btn => 'Update';

  @override
  String get update_btnErr => 'Retry';

  @override
  String get update_btnInstall => 'Install';

  @override
  String update_downloading(String filename, int progress) {
    return 'Downloading $filename ($progress%)';
  }

  @override
  String get update_dialog_noAutoUpdate => 'LB Planner cannot be updated automatically on this platform. Please run the command below to update.';

  @override
  String get update_dialog_helpNeeded => 'LB Planner needs manual intervention to update. Please run the command below to complete the update.';

  @override
  String get update_dialog_title => 'Manual steps required!';

  @override
  String get update_installing => 'Installing...';

  @override
  String update_patchNotes(String version) {
    return '$version Patch notes';
  }

  @override
  String user_notifications_inviteAccepted_text(String username) {
    return '$username has joined your plan!';
  }

  @override
  String user_notifications_inviteDeclined_text(String username) {
    return '$username has declined your offer to join your plan!';
  }

  @override
  String get user_notifications_invite_accept => 'Join';

  @override
  String get user_notifications_invite_accept_confirm_body => 'Your current plan is not empty and will we discarded if you join another plan.\nThis action cannot be undone.';

  @override
  String get user_notifications_invite_accept_confirm_title => 'Are you sure you want to join another plan?';

  @override
  String get user_notifications_invite_accepted => 'You accepted';

  @override
  String get user_notifications_invite_decline => 'Decline';

  @override
  String get user_notifications_invite_declined => 'You declined';

  @override
  String get user_notifications_invite_expired => 'Expired';

  @override
  String user_notifications_invite_text(String inviter) {
    return 'You have been invited to join $inviter\'s plan!';
  }

  @override
  String user_notifications_notifications(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      zero: 'No news... You\'re up to date!',
      one: '1 Notification',
      other: '$count Notifications',
    );
  }

  @override
  String user_notifications_planLeft_text(String username) {
    return '$username has left your plan.';
  }

  @override
  String get user_notifications_planRemoved => 'You have been removed from {username}\'s plan.';

  @override
  String user_notifications_planRemoved_text(String username) {
    return 'You have been removed from $username\'s plan.';
  }

  @override
  String get user_notifications_userRegistered_docs => 'Need help?';

  @override
  String user_notifications_userRegistered_text(String username) {
    return 'Welcome, $username!\n\nIf you happen to face any issues, please let us know.';
  }
}
