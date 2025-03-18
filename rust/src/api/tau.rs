
//use crate::{handle_audio_node_trait_impls_marker, handle_getter_audio_param};
use flutter_rust_bridge::frb;
//use web_audio_api::{AudioBuffer, AudioListener, AudioParam, AudioRenderCapacity};
//use flutter_rust_bridge::frb;

#[frb(opaque)]
pub struct AudioTimestamp
{
 zozo: f64
}
impl AudioTimestamp {
    pub fn current_time(&self) -> f64 {self.zozo}
}


#[frb(opaque)]
pub struct TauAudioTimestamp
{
 zozo: f64
}
impl TauAudioTimestamp {
    pub fn current_time(&self) -> f64 {self.zozo}
}

/*
#[frb(opaque)]
pub struct IIRFilterNode
{
 zozo: f64
}
impl IIRFilterNode {
    pub fn current_time(&self) -> f64 {self.zozo}
}



#[frb(opaque)]
pub struct TauIIRFilterNode
{
 zozo: f64
}
impl TauIIRFilterNode {
    pub fn current_time(&self) -> f64 {self.zozo}
}

*/