# Csound Plugins

Welcome to the csound-plugins wiki! 

This is a collection of plugins for [csound](https://csound.com/)

# Installation

See [Installation](Installation.md)


## klib

A hashtable for csound

* [dict_new](opcodes/dict_new.md): Create a hashtable 
* [dict_free](opcodes/dict_free.md): Free a hashtable 
* [dict_get](opcodes/dict_get.md): Get a value from a hashtable 
* [dict_set](opcodes/dict_set.md): Set (or remove) a value from a hashtable 
* [dict_size](opcodes/dict_size.md): Returns the number of key:value pairs in a dict 
* [dict_query](opcodes/dict_query.md): Query different properties of a dict 
* [dict_print](opcodes/dict_print.md): Prints the contents of a dict 
* [dict_iter](opcodes/dict_iter.md): Iterate over the key-value pairs of a dict 
* [cacheput](opcodes/cacheput.md): Put a string inside the cache 
* [cacheget](opcodes/cacheget.md): Get a string inside the cache 
* [cachepop](opcodes/cachepop.md): Get a cached string and remove it from the cache 


## poly

Multiple (parallel or sequential) instances of an opcode

* [poly](opcodes/poly.md): poly creates and controls multiple parallel version of an opcode 
* [polyseq](opcodes/polyseq.md): polyseq creates and controls multiple sequential version of an opcode 


## jsfx

A csound interface to the opensource implementation of jsfx

* [jsfx](opcodes/jsfx.md): Instantiates and runs a jsfx script 
* [jsfx_new](opcodes/jsfx_new.md): Instantiates a jsfx script 
* [jsfx_play](opcodes/jsfx_play.md): Processes audio through a jsfx script 
* [jsfx_getslider](opcodes/jsfx_getslider.md): Gets a slider value of a jsfx instance 
* [jsfx_setslider](opcodes/jsfx_setslider.md): Sets the slider values of a jsfx script 
* [tubeharmonics](opcodes/tubeharmonics.md): A distortion with control for odd/even harmonics 


## sched

Schedule an action when note is stopped

* [atstop](opcodes/atstop.md): Schedule an instrument at the end of the current instrument 


## else

Collection of miscellaneous plugins, most ports of supercollider, puredata/else or jsfx

* [crackle](opcodes/crackle.md): generates noise based on a chaotic equation 
* [ramptrig](opcodes/ramptrig.md): A triggerable ramp between 0 and 1 
* [sigmdrive](opcodes/sigmdrive.md): Analog "soft clipping" distortion by applying non-linear transfer functions. 
* [lfnoise](opcodes/lfnoise.md): low frequency, band-limited noise 
* [schmitt](opcodes/schmitt.md): A schmitt trigger (a comparator with hysteresis). 
* [standardchaos](opcodes/standardchaos.md): Standard map chaotic generator 
* [linenv](opcodes/linenv.md): A triggerable linear envelope with sustain segment 
* [diode_ringmod](opcodes/diode_ringmod.md): A ring modulator with optional non-linearities 



