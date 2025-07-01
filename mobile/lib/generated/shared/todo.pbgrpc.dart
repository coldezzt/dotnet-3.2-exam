// This is a generated file - do not edit.
//
// Generated from shared/todo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'todo.pb.dart' as $0;

export 'todo.pb.dart';

@$pb.GrpcServiceName('todo.TodoService')
class TodoServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  TodoServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseStream<$0.TodoMessage> get($0.EmptyMessage request, {$grpc.CallOptions? options,}) {
    return $createStreamingCall(_$get, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.TodoMessage> create($0.TodoMessage request, {$grpc.CallOptions? options,}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoMessage> update($0.TodoMessage request, {$grpc.CallOptions? options,}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.BoolMessage> delete($0.TodoMessage request, {$grpc.CallOptions? options,}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

    // method descriptors

  static final _$get = $grpc.ClientMethod<$0.EmptyMessage, $0.TodoMessage>(
      '/todo.TodoService/Get',
      ($0.EmptyMessage value) => value.writeToBuffer(),
      $0.TodoMessage.fromBuffer);
  static final _$create = $grpc.ClientMethod<$0.TodoMessage, $0.TodoMessage>(
      '/todo.TodoService/Create',
      ($0.TodoMessage value) => value.writeToBuffer(),
      $0.TodoMessage.fromBuffer);
  static final _$update = $grpc.ClientMethod<$0.TodoMessage, $0.TodoMessage>(
      '/todo.TodoService/Update',
      ($0.TodoMessage value) => value.writeToBuffer(),
      $0.TodoMessage.fromBuffer);
  static final _$delete = $grpc.ClientMethod<$0.TodoMessage, $0.BoolMessage>(
      '/todo.TodoService/Delete',
      ($0.TodoMessage value) => value.writeToBuffer(),
      $0.BoolMessage.fromBuffer);
}

@$pb.GrpcServiceName('todo.TodoService')
abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'todo.TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EmptyMessage, $0.TodoMessage>(
        'Get',
        get_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.EmptyMessage.fromBuffer(value),
        ($0.TodoMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoMessage, $0.TodoMessage>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoMessage.fromBuffer(value),
        ($0.TodoMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoMessage, $0.TodoMessage>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoMessage.fromBuffer(value),
        ($0.TodoMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoMessage, $0.BoolMessage>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoMessage.fromBuffer(value),
        ($0.BoolMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$0.TodoMessage> get_Pre($grpc.ServiceCall $call, $async.Future<$0.EmptyMessage> $request) async* {
    yield* get($call, await $request);
  }

  $async.Stream<$0.TodoMessage> get($grpc.ServiceCall call, $0.EmptyMessage request);

  $async.Future<$0.TodoMessage> create_Pre($grpc.ServiceCall $call, $async.Future<$0.TodoMessage> $request) async {
    return create($call, await $request);
  }

  $async.Future<$0.TodoMessage> create($grpc.ServiceCall call, $0.TodoMessage request);

  $async.Future<$0.TodoMessage> update_Pre($grpc.ServiceCall $call, $async.Future<$0.TodoMessage> $request) async {
    return update($call, await $request);
  }

  $async.Future<$0.TodoMessage> update($grpc.ServiceCall call, $0.TodoMessage request);

  $async.Future<$0.BoolMessage> delete_Pre($grpc.ServiceCall $call, $async.Future<$0.TodoMessage> $request) async {
    return delete($call, await $request);
  }

  $async.Future<$0.BoolMessage> delete($grpc.ServiceCall call, $0.TodoMessage request);

}
