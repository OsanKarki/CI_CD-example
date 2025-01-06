import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'note_fetch_model.freezed.dart';
part 'note_fetch_model.g.dart';

@HiveType(typeId: 0)
@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    @JsonKey(
        name: "created_time",
        fromJson: _timestampToDateTime,
        toJson: _dateTimeToTimestamp)
    @HiveField(0)
    required DateTime time,
    @HiveField(1) required String description,
    @HiveField(2) required String title,
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);

  factory NoteModel.initial() =>
      NoteModel(time: DateTime.now(), description: "", title: "");
}

// Helper functions for conversion
DateTime _timestampToDateTime(dynamic timestamp) {
  if (timestamp is Timestamp) {
    return timestamp.toDate(); // Converts Firestore Timestamp to DateTime
  } else if (timestamp is String) {
    return DateTime.parse(timestamp); // Handles String to DateTime
  } else {
    throw Exception("Invalid timestamp format");
  }
}

dynamic _dateTimeToTimestamp(DateTime dateTime) {
  return Timestamp.fromDate(
      dateTime); // Converts DateTime to Firestore Timestamp
}
