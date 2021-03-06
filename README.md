# AudioIDE
Get detailed audio feedback as you program, in addition to or instead of visual feedback

## The Concept
Modern integrated development environments (IDEs) have a rich variety of features intended to make coding faster, easier, and less error-prone: syntax highlighting, live linting, code-folding, etc.

A large number of these features are designed for fully-sighted people; they may be useless or even problematic for others.

We should be able to develop audio equivalents of many of these features, providing discreet, real-time audio feedback to programmers in the same way that visual feedback is now offered. We should also be able to develop features specifically designed for the convenience of people with visual disabilities, people with dyslexia, auditory learners, and anyone else who may benefit from auditory feedback to supplement or replace visual feedback.

## An Opening Challenge
Run a web search for your favorite text editor and the word "accessibility." Chances are, you'll discover via Github issues, blog posts, or mailing lists that, tragically, the editor is difficult or impossible for screenreader users to use. There are exceptions... but they are rare.

Without an open-source editor that is keyboard navigable and that plays nicely with screenreaders, this project can't get off the ground.

Emacs/[Emacspeak](https://github.com/tvraman/emacspeak) is one obvious option.

Something with less steep of a learning curve would be very welcome...

Where should we start?????? What are your suggestions?

## The Spec

Note: [Emacspeak evidently implements some (or all) of this already!](https://stackoverflow.com/questions/118984/how-can-you-program-if-youre-blind)
- http://tvraman.github.io/emacspeak/manual/Audio-Formatting-And-Aural-CSS.html#Audio-Formatting-And-Aural-CSS

### Audio syntax highlighting

Where [standard syntax highlighting](https://en.wikipedia.org/wiki/Syntax_highlighting) changes colors, the reading voice should change pitch.

Just as current IDEs permit users to select a preferred color scheme, users should be able to adjust the pitches to their liking and should be able to easily switch between a set of "themes".

Another (likely less desirable) alternative: instead of altering the in pitch, the reader may switch to a different system voice on syntax "color" changes.

refs:

- http://tvraman.github.io/emacspeak/manual/Voice-Lock.html#Voice-Lock
- http://tvraman.github.io/emacspeak/manual/Voice_002dlock.html#Voice_002dlock

### Indentation level

In languages like python, the indentation level of code is meaningful. In all languages, indentation is useful for code organization.

a) Expose the current indentation level via a keyboard-shortcut ("Level 2" / "Indentation level 2" / "Indentation level 2: 8 spaces").

b) Offer an optional and configurable background tone which sounds continuously at a low volume and which increases in pitch as indentation increases. The pitches for properly-indented code should be consonant, building a user-configurable, consonant chord (e.g. C1-E1-G1-C2-E2-G2....). Users should be able to specify whether they wish to hear the entire chord, just the note of the current level, or some appropriate subset (e.g., current level and two lower). Improperly indented code will be dissonant and easy to find.

  Syntax highlighting themes should specify pitches for this chord, taking care to ensure the experience remains acceptably consonant with all syntax "colors."

c) Users who do not enable the background tone should be able to trigger it temporarily on demand while holding down a keyboard shortcut. If the tone is already enabled, the same shortcut should temporarily increase its volume.

refs:
- "Indicates indentation with a tone or a spoken cue if audio indentation is in use." http://tvraman.github.io/emacspeak/manual/Reading.html#Reading


### Linting

If an indentation chord is enabled, the chord should change from major to minor when keyboard focus is on a line which a linter has flagged as problematic.

Or, a special linter-specific sound should be triggered.

The alteration in pitch is preferred so that a linter-specific sound can be triggered when the problematic characters are arrowed to, and so that the pitch can be restored to normal as soon as the problem is resolved. (Compare the addition of a visual icon to an editor's "gutter" by linters, paired with the red-underlining of problematic code within a line.)

### Detailed cursor contextual information

Wayfinding: you are (...here...).

- In html/xml, which tag, and where in it (declaring the tag, adding text to a tag, closing a tag) = tag details.
- In html.xml, situate the tag in the DOM (you an in a list item, in an ordered list, in a nav....) = tag context. Repeated presses read further up the tree, until the enclosing HTML tag is reached.

See [Pode](https://pode.herokuapp.com/), https://github.com/toolness/pode, for inspiration.

- In python, which scope (function/method, class, block, etc.). Repeated pressed read identifiers for additional enclosing scopes. Should follow the stackframe, but should also catch loops, conditionals, try/excepts, context managers, and any other flow-altering blocks.

### Language-specific screen reader pronounciation lists

-  "<" maps to "open tag" and ">" maps to "close tag" in html/xml
-  "!=" maps to "bang equals"
-  "{{", "{%", "}}" and "%}" map to appropriate open/close descriptors in templating languages
etc.
- "{", "}", "[" and "]" map to begin/end dict/list and similar

refs:

-  http://tvraman.github.io/emacspeak/manual/emacspeak_002dpronounce.html#emacspeak_002dpronounce

### Nested parentheses
When ")" is typed, announce the name of scope that has been closed (or "anonymous scope", if unnamed).

