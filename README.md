# AudioIDE
Get detailed audio feedback as you program, in addition to or instead of visual feedback

## The Concept
Modern integrated development environments (IDEs) have a rich variety of features intended to make coding faster, easier, and less error-prone: syntax highlighting, live linting, code-folding, etc. 

A large number of these features are designed for fully-sighted people; they may be useless or even problematic for others.

We should be able to develop audio equivalents of many of these features, providing discreet, real-time audio feedback to programmers in the same way that visual feedback is now offered. We should also be able to develop features specifically designed for the convenience of people with visual disabilities, people with dyslexia, auditory learners, and anyone else who may benefit from auditory feedback to supplement or replace visual feedback.

## An Opening Challenge
Run a web search for your favorite text editor and the word "accessibility." Chances are, you'll discover via Github issues, blog posts, or mailing lists that, tragically, the editor is difficult or impossible for screenreader users to use. There are exceptions... but they are rare.

Without an open-source editor that is keyboard navigable and that plays nicely with screenreaders, this project can't get off the ground.

Emacs is one good option.

Something simpler, with less steep of a learning curve, would be very welcome.

Where should we start?????? What are your suggestions?

## The Spec

### Audio syntax highlighting

Where [standard syntax highlighting](https://en.wikipedia.org/wiki/Syntax_highlighting) changes colors, the reading voice should change pitch. 

As one may select a preferred color scheme, users should be able to adjust the pitches to their liking, and should be able to easily switch between a set of "themes".

Another (likely less desirable) alternative: instead of altering the pitch, switch to a different system voice. 

### Indentation level

In some languages, such as python, the indentation level of code is meaningful. In all languages, indentation is useful for code organization.

a) Expose the current indentation level via a keyboard-shortcut ("Indentation level 2").

b) Offer an optional and configurable background tone which sounds continuously at a low volume that increases in pitch as indentation increases. The pitches for properly-indented code should be consonant, building a user-configurable, consonant chord. (E.g. C1-E1-G1-C2-E2-G2....). Users should be able to specify whether they wish to hear the entire chord, just the note of the current level, or some appropriate subset (e.g., current level and two lower). Improperly indented code will be dissonant and easy to find.

c) Users who do not enable the background tone, should be able to trigger it temporarily on demand while holding down a keyboard shortcut. If the tone is already enabled, the same shortcut should temporarily increase its volume.

### Linting

### Detailed cursor contextual information


