// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_fetch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteModelImpl _$$NoteModelImplFromJson(Map<String, dynamic> json) =>
    _$NoteModelImpl(
      time: _timestampToDateTime(json['created_time']),
      description: json['description'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$NoteModelImplToJson(_$NoteModelImpl instance) =>
    <String, dynamic>{
      'created_time': _dateTimeToTimestamp(instance.time),
      'description': instance.description,
      'title': instance.title,
    };
