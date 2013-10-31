# Name

TestML::Tiny - Single File Subset of TestML

# Synopsis

    use TestML::Tiny;
    TestML::Tiny->new(
        testml => join('', <DATA>),
    )->run;

    sub uppercase {
        my ($self, $string) = @_;
        return uc($string);
    }

    __DATA__
    %TestML 0.1.0

    Plan = 6

    *text.uppercase == *upper
    *upper == *text.uppercase
    *upper.uppercase == *text.uppercase

    === Test one
    --- text: TestML is Tiny!
    --- upper: TESTML IS TINY!

    === Test two
    --- text
    Test, Test, Test…
    --- upper
    TEST, TEST, TEST…

# Description

TestML is a programming language agnostic, data driven testing language. It is
a descendent of Perl's Test::Base, made to work in any programming language.

Some projects only need a subset of TestML, and would like it to be in a
single file that ships with their project. TestML::Tiny aims to be that.

# How TO TestML

TestML is really clean and simple in practice, but it involves learning a few
new concepts. There's TestML code and data sections, bridge classes, and
runner files.

THe best start is to see it in practice. eq Look through a test suite like the
one in here.

# Status

This 0.0.1 version is not fully functional yet.  Only the data section parser
works.

This version is being used in YAML::Tiny development.

# Author

Ingy döt Net (ingy) <ingy@cpan.org>

# Copyright

Copyright (c) 2013 Ingy döt Net

# License

This library is free software and may be distributed under the same terms as
perl itself.
