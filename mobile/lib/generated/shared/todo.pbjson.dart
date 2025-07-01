// This is a generated file - do not edit.
//
// Generated from shared/todo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use todoMessageDescriptor instead')
const TodoMessage$json = {
  '1': 'TodoMessage',
  '2': [
    {'1': 'Id', '3': 1, '4': 1, '5': 5, '10': 'Id'},
    {'1': 'Title', '3': 2, '4': 1, '5': 9, '10': 'Title'},
    {'1': 'Description', '3': 3, '4': 1, '5': 9, '10': 'Description'},
    {'1': 'IsComplete', '3': 4, '4': 1, '5': 8, '10': 'IsComplete'},
  ],
};

/// Descriptor for `TodoMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoMessageDescriptor = $convert.base64Decode(
    'CgtUb2RvTWVzc2FnZRIOCgJJZBgBIAEoBVICSWQSFAoFVGl0bGUYAiABKAlSBVRpdGxlEiAKC0'
    'Rlc2NyaXB0aW9uGAMgASgJUgtEZXNjcmlwdGlvbhIeCgpJc0NvbXBsZXRlGAQgASgIUgpJc0Nv'
    'bXBsZXRl');

@$core.Deprecated('Use emptyMessageDescriptor instead')
const EmptyMessage$json = {
  '1': 'EmptyMessage',
};

/// Descriptor for `EmptyMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyMessageDescriptor = $convert.base64Decode(
    'CgxFbXB0eU1lc3NhZ2U=');

@$core.Deprecated('Use boolMessageDescriptor instead')
const BoolMessage$json = {
  '1': 'BoolMessage',
  '2': [
    {'1': 'isSuccess', '3': 1, '4': 1, '5': 8, '10': 'isSuccess'},
  ],
};

/// Descriptor for `BoolMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boolMessageDescriptor = $convert.base64Decode(
    'CgtCb29sTWVzc2FnZRIcCglpc1N1Y2Nlc3MYASABKAhSCWlzU3VjY2Vzcw==');

