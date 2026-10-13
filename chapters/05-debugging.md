# Debugging in R

*Squash bugs fast*

## Learn to Debug R Code

Debugging is one of the most important skills to build once you start writing your own functions. It takes time to develop, but a good starting place is the [debugging chapter of Hadley Wickham's *Advanced R*](https://adv-r.hadley.nz/debugging.html).

## Debugging Functions

- **`traceback()`**

  Run this right after an error to see the sequence of function calls that led to it, so you know where to start looking.

- **`browser()`**

  Put this in the body of your function, and it will pause execution so you can interactively step through your function.

- **`debug()`**

  Flags a function so that the next time it runs, it pauses at the first line and lets you execute one statement at a time. Turn it off with `undebug()`.

- **`options(error = recover)`**

  After any error, lets you pick which function call to inspect at the moment things went wrong.

- **`message()`**

  Print statements are useful to pin down where you are during a function's execution. `message()` is better than `print()` for this because it can be silenced with `suppressMessages()`.

- **VS Code and RStudio debuggers**

  Both editors have really nice interactive debugging tools that are worth exploring.
