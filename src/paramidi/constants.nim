import sets

const
  notes* = [
    "c", "c#", "d", "d#", "e", "f", "f#", "g", "g#", "a", "a#", "b",
    "r",
    "c+", "c+1", "c+2", "c+3", "c+4", "c+5", "c+6",
    "c-", "c-1", "c-2", "c-3", "c-4", "c-5", "c-6",
    "c1", "c2", "c3", "c4", "c5", "c6", "c7",
    "c#+", "c#+1", "c#+2", "c#+3", "c#+4", "c#+5", "c#+6",
    "c#-", "c#-1", "c#-2", "c#-3", "c#-4", "c#-5", "c#-6",
    "c#1", "c#2", "c#3", "c#4", "c#5", "c#6", "c#7",
    "d+", "d+1", "d+2", "d+3", "d+4", "d+5", "d+6",
    "d-", "d-1", "d-2", "d-3", "d-4", "d-5", "d-6",
    "d1", "d2", "d3", "d4", "d5", "d6", "d7",
    "d#+", "d#+1", "d#+2", "d#+3", "d#+4", "d#+5", "d#+6",
    "d#-", "d#-1", "d#-2", "d#-3", "d#-4", "d#-5", "d#-6",
    "d#1", "d#2", "d#3", "d#4", "d#5", "d#6", "d#7",
    "e+", "e+1", "e+2", "e+3", "e+4", "e+5", "e+6",
    "e-", "e-1", "e-2", "e-3", "e-4", "e-5", "e-6",
    "e1", "e2", "e3", "e4", "e5", "e6", "e7",
    "f+", "f+1", "f+2", "f+3", "f+4", "f+5", "f+6",
    "f-", "f-1", "f-2", "f-3", "f-4", "f-5", "f-6",
    "f1", "f2", "f3", "f4", "f5", "f6", "f7",
    "f#+", "f#+1", "f#+2", "f#+3", "f#+4", "f#+5", "f#+6",
    "f#-", "f#-1", "f#-2", "f#-3", "f#-4", "f#-5", "f#-6",
    "f#1", "f#2", "f#3", "f#4", "f#5", "f#6", "f#7",
    "g+", "g+1", "g+2", "g+3", "g+4", "g+5", "g+6",
    "g-", "g-1", "g-2", "g-3", "g-4", "g-5", "g-6",
    "g1", "g2", "g3", "g4", "g5", "g6", "g7",
    "g#+", "g#+1", "g#+2", "g#+3", "g#+4", "g#+5", "g#+6",
    "g#-", "g#-1", "g#-2", "g#-3", "g#-4", "g#-5", "g#-6",
    "g#1", "g#2", "g#3", "g#4", "g#5", "g#6", "g#7",
    "a+", "a+1", "a+2", "a+3", "a+4", "a+5", "a+6",
    "a-", "a-1", "a-2", "a-3", "a-4", "a-5", "a-6",
    "a1", "a2", "a3", "a4", "a5", "a6", "a7",
    "a#+", "a#+1", "a#+2", "a#+3", "a#+4", "a#+5", "a#+6",
    "a#-", "a#-1", "a#-2", "a#-3", "a#-4", "a#-5", "a#-6",
    "a#1", "a#2", "a#3", "a#4", "a#5", "a#6", "a#7",
    "b+", "b+1", "b+2", "b+3", "b+4", "b+5", "b+6",
    "b-", "b-1", "b-2", "b-3", "b-4", "b-5", "b-6",
    "b1", "b2", "b3", "b4", "b5", "b6", "b7",
  ]
  instruments* = [
    # Piano
    "piano", # acoustic-grand-piano
    "bright-acoustic-piano",
    "electric-grand-piano",
    "honky-tonk-piano",
    "electric-piano-1",
    "electric-piano-2",
    "harpsichord",
    "clavinet",
    # Chromatic Percussion
    "celesta",
    "glockenspiel",
    "music-box",
    "vibraphone",
    "marimba",
    "xylophone",
    "tubular-bells",
    "dulcimer",
    # Organ
    "drawbar-organ",
    "percussive-organ",
    "rock-organ",
    "organ", # church-organ
    "reed-organ",
    "accordion",
    "harmonica",
    "tango-accordion",
    # Guitar
    "guitar", # acoustic-guitar-nylon
    "acoustic-guitar-steel",
    "electric-guitar-jazz",
    "electric-guitar-clean",
    "electric-guitar-palm-muted",
    "electric-guitar-overdrive",
    "electric-guitar-distorted",
    "electric-guitar-harmonics",
    # Bass
    "acoustic-bass",
    "electric-bass", # electric-bass-finger
    "electric-bass-pick",
    "fretless-bass",
    "bass-slap",
    "bass-pop",
    "synth-bass-1",
    "synth-bass-2",
    # Strings
    "violin",
    "viola",
    "cello",
    "contrabass",
    "tremolo-strings",
    "pizzicato-strings",
    "harp", # orchestral-harp
    "timpani",
    # Ensemble
    "string-ensemble-1",
    "string-ensemble-2",
    "synth-strings-1",
    "synth-strings-2",
    "choir-aahs",
    "voice-oohs",
    "synth-voice",
    "orchestra-hit",
    # Brass
    "trumpet",
    "trombone",
    "tuba",
    "muted-trumpet",
    "french-horn",
    "brass-section",
    "synth-brass-1",
    "synth-brass-2",
    # Reed
    "soprano-sax",
    "alto-sax",
    "tenor-sax",
    "baritone-sax",
    "oboe",
    "english-horn",
    "bassoon",
    "clarinet",
    # Pipe
    "piccolo",
    "flute",
    "recorder",
    "pan-flute",
    "bottle",
    "shakuhachi",
    "whistle",
    "ocarina",
    # Synth Lead
    "square-lead",
    "saw-wave",
    "calliope-lead",
    "chiffer-lead",
    "charang",
    "solo-vox",
    "fifths",
    "bass-and-lead",
    # Synth Pad
    "synth-pad-new-age",
    "synth-pad-warm",
    "synth-pad-polysynth",
    "synth-pad-choir",
    "synth-pad-bowed",
    "synth-pad-metallic",
    "synth-pad-halo",
    "synth-pad-sweep",
    # Synth Effects
    "fx-rain",
    "fx-soundtrack",
    "fx-crystal",
    "fx-atmosphere",
    "fx-brightness",
    "fx-goblins",
    "fx-echoes",
    "fx-sci-fi",
    # Ethnic
    "sitar",
    "banjo",
    "shamisen",
    "koto",
    "kalimba",
    "bagpipes",
    "fiddle",
    "shehnai",
    # Percussive
    "tinkle-bell",
    "agogo",
    "steel-drums",
    "woodblock",
    "taiko-drum",
    "melodic-tom",
    "synth-drum",
    "reverse-cymbal",
    # Sound Effects
    "guitar-fret-noise",
    "breath-noise",
    "seashore",
    "bird-tweet",
    "telephone-ring",
    "helicopter",
    "applause",
    "gun-shot",
  ]
  modes* = ["sequential", "concurrent"]
  noteSet* = notes.toHashSet
  instrumentSet* = instruments.toHashSet
  modeSet* = modes.toHashSet
