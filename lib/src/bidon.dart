/*
 * Copyright 2024 Canardoux.
 *
 * This file is part of the τ project.
 *
 * τ is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 (GPL3), as published by
 * the Free Software Foundation.
 *
 * τ is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with τ.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'package:etau/etau.dart' as t;

import '../public/rust/frb_generated.dart' as j;
import '../public/rust/third_party/web_audio_api.dart' as j;
import '../public/rust/third_party/web_audio_api/context.dart' as j;
import '../public/rust/third_party/web_audio_api/media_devices.dart' as j;
import '../public/rust/third_party/web_audio_api/media_recorder.dart' as j;
import '../public/rust/third_party/web_audio_api/media_streams.dart' as j;
import '../public/rust/third_party/web_audio_api/node.dart' as j;
import '../public/rust/third_party/web_audio_api/worklet.dart' as j;


 class AudioNodeBidon extends j.AudioNode {
    /// Config for up/down-mixing of input channels for this node.
    ///
    /// Only when implementing the [`AudioNode`] trait manually, this struct is of any concern.
    void channelConfig() {}

    /// Represents an integer used to determine how many channels are used when up-mixing and
    /// down-mixing connections to any inputs to the node.
    int channelCount() {}

    /// Represents an enumerated value describing the way channels must be matched between the
    /// node's inputs and outputs.
    j.ChannelCountMode channelCountMode() => j.ChannelCountMode();

    /// Represents an enumerated value describing the meaning of the channels. This interpretation
    /// will define how audio up-mixing and down-mixing will happen.
    j.ChannelInterpretation channelInterpretation() => j.ChannelInterpretation();

    /// Unset the callback to run when an unhandled exception occurs in the audio processor.
    void clearOnprocessorerror() {}

    /// The [`BaseAudioContext`](crate::context::BaseAudioContext) concrete type which owns this
    /// AudioNode.
    void context() {}

    /// Disconnects all outgoing connections from the AudioNode.
    void disconnect() {}

    /// Disconnects all outgoing connections at the given output port from the AudioNode.
    ///
    /// # Panics
    ///
    /// This function will panic when
    /// - if the output port is out of bounds for this node
    void disconnectOutput({required int output}) {}

    /// The number of inputs feeding into the AudioNode. For source nodes, this will be 0.
    int numberOfInputs() => 0;

    /// The number of outputs coming out of the AudioNode.
    int numberOfOutputs() => 0;

    /// Handle of the associated [`BaseAudioContext`](crate::context::BaseAudioContext).
    ///
    /// Only when implementing the AudioNode trait manually, this struct is of any concern.
    void registration() {}
}

class IIRFilterNode extends AudioNodeBidon {
  /* ctor */ IIRFilterNode(j.AudioContext context, IIRFilterOptions options) {}
}

class IIRFilterOptions {
  /* ctor */ IIRFilterOptions({
    int? channelCount,
    t.ChannelCountMode? channelCountMode,
    t.ChannelInterpretation? channelInterpretation,
    required t.TauArray<t.TauNumber> feedforward,
    required t.TauArray<t.TauNumber> feedback,
    });
  
  
}

class MediaElementAudioSourceOptions {
   /* ctor */ MediaElementAudioSourceOptions({
    required t.MediaElement mediaElement
});
}

class MediaStreamAudioSourceOptions {
  /* ctor */ MediaStreamAudioSourceOptions({required t.MediaStream mediaStream});
}

class MediaStreamTrackAudioSourceOptions {
   /* ctor */ MediaStreamTrackAudioSourceOptions({required t.MediaStreamTrack mediaStreamTrack});
}

class PeriodicWaveConstraints {

}

class AudioWorkletNodeOptions {
    /* ctor */ AudioWorkletNodeOptions ({    int channelCount = 2,
  t.ChannelCountMode channelCountMode = 'exact',
  t.ChannelInterpretation channelInterpretation = 'speakers',
  int numberOfInputs = 0,
  int numberOfOutputs = 1,
  List<int> outputChannelCount = const [2],
  t.ParameterData? parameterData,
  t.ProcessorOptions? processorOptions,
}) ;
}


class TauRecorder {

}

class MediaRecorderOptions {

}

class HTMLAudioElement {
   
}

class AudioWorklet {

}

class AudioTimestamp {
   /* ctor */ AudioTimestamp({t.TauHighResTimeStamp? contextTime, t.TauHighResTimeStamp? performanceTime});
  double contextTime;
  double performanceTime;
}