# Calculator
My attempt at a good command line calculator

#### Design Philosophy
I decided to make this because I couldn't find a calculator that worked with me instead of against me. Therefore, this one will be better because it will be designed to:

- Minimize pedantry: I don't care if the grammar is a little ambiguous. The program should be smart enough to work with an ambiguous grammar. In return the user promises not to give the program weird things like `x+++y` (valid C code)
- Be supportive: Although it has a formal grammar, it is a calculator, not a programming language. It will be designed to be used as a calculator, so it should be user-friendly for typical calculator activities.
- Have good engineering support - I need the calculator to do binary math, extreme floating point, etc. easily.
- Simple - Syntax should be as terse as possible without having a steep learning curve.


#### Design Facts
- Conventional mathematical operators (ie., infix for the most part. Unary operators are polish)
- Numbers can be arbitrarily large
- `` ` `` represents the last value calculated
- Functions can access parent scope'd variables. However, if a function tries to set a variable which already exists, the new value hides the other value. Ie., outside variables can be accessed but not changed.

#### Wants
- Lazy evaluation
- I'd like it to have a functional feel, although imperative might be easier to deal with on a day-to-day
- In accordance with the 'minimize pedantry' philosophy, the calculator should have lots of implicit casting/coercion. Basically I just want an answer, I don't care what it had to do to the data to get there

#### Don't cares
- Don't need closures
- Don't need fancy scoping - I'd be okay with global everything
