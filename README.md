# yup

A small(er) implementation of the UNIX command "yes",
with very limited functionality. Written by anson in Feb 2024

Limited functionality in that all that this program does
is simply print a single character in a loop to stdout.
This program does not take any arguments, and you can not
specify your own string to print at the moment (as of v. 1.0.0).

This program is but an exercise in the sizes of executables,
inspired by Brian Raiter's [experiements and journeys into the
creation of super tiny ELF binaries](http://www.muppetlabs.com/~breadbox/software/tiny/),
of which this program at the moment (as of v. 1.0.0) is not an
example of. Nonetheless, I am determined to understand the ELF
standard better. Currently, the size of the binary once assembled
is a little more than 8 kilobytes, which is fine enough. I have
done some optimizations in order to ensure that smaller values
are to be put in smaller registers, and avoiding MOV wherever I can.

My goal for this program is to reach sub 1K, or under a thousand
bytes, which I believe is doable. I will update this project with
better/smaller versions when I can understand more. Hopefully.

### v. 1.0.0 (First Release)
Feb 2024

A small(er) implementation of the UNIX command "yes".
This program does not accept arguments.
