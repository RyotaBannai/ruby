### Scope 
| local| global | instance | class | constant| 
|:------:|:------:|:-----:|:-----:|:-----:|
| \[a-z\] or _ | $ | @ | @@ | \[A-Z\] |
- `nil` which is assigned to `uninitialized variables` 
- `self` which refers to the currently executing object.
- _Use of global variables is strongly discouraged._
- a **constant** value to be changed after it has been declared, although the interpreter will protest slightly with a warning message.
  Constants declared `within a class or module` are available anywhere `within the context of that class or module`. Constants declared `outside of a class or module` are assigned **global scope**.

|ariable Name	|Variable Value|
|:------:|:------|
|$@	| The location of latest error                            |
|$_	| The string last read by gets                            |
|$.	| The line number last read by interpreter                |
|$&	| The string last matched by regexp                       |
|$~	| The last regexp match, as an array of subexpressions    |
|$n	| The nth subexpression in the last match (same as $~[n]) |
|$=	| The case-insensitivity flag                             |
|$/	| The input record separator                              |
|$\	| The output record separator                             |
|$0	| The name of the ruby script file currently executing    |
|$*	| The command line arguments used to invoke the script    |
|$$	| The Ruby interpreter's process ID                       |
|$?	| The exit status of last executed child process          |
