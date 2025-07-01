// This is a generated file - do not edit.
//
// Generated from shared/todo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TodoMessage extends $pb.GeneratedMessage {
  factory TodoMessage({
    $core.int? id,
    $core.String? title,
    $core.String? description,
    $core.bool? isComplete,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    if (description != null) result.description = description;
    if (isComplete != null) result.isComplete = isComplete;
    return result;
  }

  TodoMessage._();

  factory TodoMessage.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory TodoMessage.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TodoMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'Id', $pb.PbFieldType.O3, protoName: 'Id')
    ..aOS(2, _omitFieldNames ? '' : 'Title', protoName: 'Title')
    ..aOS(3, _omitFieldNames ? '' : 'Description', protoName: 'Description')
    ..aOB(4, _omitFieldNames ? '' : 'IsComplete', protoName: 'IsComplete')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TodoMessage clone() => TodoMessage()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TodoMessage copyWith(void Function(TodoMessage) updates) => super.copyWith((message) => updates(message as TodoMessage)) as TodoMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TodoMessage create() => TodoMessage._();
  @$core.override
  TodoMessage createEmptyInstance() => create();
  static $pb.PbList<TodoMessage> createRepeated() => $pb.PbList<TodoMessage>();
  @$core.pragma('dart2js:noInline')
  static TodoMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoMessage>(create);
  static TodoMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isComplete => $_getBF(3);
  @$pb.TagNumber(4)
  set isComplete($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsComplete() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsComplete() => $_clearField(4);
}

class EmptyMessage extends $pb.GeneratedMessage {
  factory EmptyMessage() => create();

  EmptyMessage._();

  factory EmptyMessage.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory EmptyMessage.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmptyMessage clone() => EmptyMessage()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmptyMessage copyWith(void Function(EmptyMessage) updates) => super.copyWith((message) => updates(message as EmptyMessage)) as EmptyMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyMessage create() => EmptyMessage._();
  @$core.override
  EmptyMessage createEmptyInstance() => create();
  static $pb.PbList<EmptyMessage> createRepeated() => $pb.PbList<EmptyMessage>();
  @$core.pragma('dart2js:noInline')
  static EmptyMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyMessage>(create);
  static EmptyMessage? _defaultInstance;
}

class BoolMessage extends $pb.GeneratedMessage {
  factory BoolMessage({
    $core.bool? isSuccess,
  }) {
    final result = create();
    if (isSuccess != null) result.isSuccess = isSuccess;
    return result;
  }

  BoolMessage._();

  factory BoolMessage.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory BoolMessage.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BoolMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'todo'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isSuccess', protoName: 'isSuccess')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolMessage clone() => BoolMessage()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolMessage copyWith(void Function(BoolMessage) updates) => super.copyWith((message) => updates(message as BoolMessage)) as BoolMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoolMessage create() => BoolMessage._();
  @$core.override
  BoolMessage createEmptyInstance() => create();
  static $pb.PbList<BoolMessage> createRepeated() => $pb.PbList<BoolMessage>();
  @$core.pragma('dart2js:noInline')
  static BoolMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoolMessage>(create);
  static BoolMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSuccess => $_getBF(0);
  @$pb.TagNumber(1)
  set isSuccess($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSuccess() => $_clearField(1);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
