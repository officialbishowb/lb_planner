// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:lbplanner_api/lbplanner_api.dart';

part 'module.freezed.dart';
part 'module.g.dart';

@freezed

/// Module model
class Module with _$Module{
  const Module._();

  /// Module model
  const factory Module({
    /// The id of the module.
     required int id,

    /// The name of the module.
     required String name,
     
    /// The url of the module.
     required String url,

    /// The start date of the module.
     required DateTime startDate,

     /// The end date of the module.
     required DateTime endDate,

     /// The deadline of the module.
     required DateTime deadline,

      /// If the module is hidden or not.
     required bool hidden,

      /// The grade of the module.
     required ModuleGrades grade,

     /// The type of the module.
     required ModuleTypes type,

     /// The status of the module.
     required ModuleStatus status,

  })= _Module;

  /// Module model from json
  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);
}