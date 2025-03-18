// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.9.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../api/override_web_audio_api.dart';
import '../../frb_generated.dart';
import '../web_audio_api.dart';
import 'media_streams.dart';
import 'node.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored because they have generic arguments: `set_ondataavailable`, `set_onerror`, `set_onstop`
// These types are ignored because they are neither used by any `pub` functions nor (for structs and enums) marked `#[frb(unignore)]`: `MediaRecorderInner`, `RecordedData`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `fmt`, `fmt`

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<BlobEvent>>
abstract class BlobEvent implements RustOpaqueInterface {
  Uint8List get blob;

  Event get event;

  double get timecode;

  set blob(Uint8List blob);

  set event(Event event);

  set timecode(double timecode);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MediaRecorder>>
abstract class MediaRecorder
    implements RustOpaqueInterface, MediaRecorderMiscExt {
  void clearOndataavailable();

  void clearOnerror();

  void clearOnstop();

  /// Creates a new `MediaRecorder` object, given a [`MediaStream`] to record.
  ///
  /// Only supports WAV file format currently.
  factory MediaRecorder({required MediaStream stream}) => RustLib.instance.api
      .webAudioApiMediaRecorderMediaRecorderNew(stream: stream);

  @override
  void setOnDataAvailable({
    required FutureOr<void> Function(BlobEvent) callback,
  });

  @override
  void setOnStop({required FutureOr<void> Function(Event) callback});

  /// Begin recording media
  ///
  /// # Panics
  ///
  /// Will panic when the recorder has already started
  void start();

  void stop();
}
