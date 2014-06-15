# This test does not run TestML. It just checks the Compiler.

use Test::More tests => 4;
use TestML::Tiny;

use XXX;
# Creating a new TestML::Tiny object will cause the TestML to be compiled.
my $t = TestML::Tiny->new(
    testml => (join '', <DATA>),
);
XXX my $f = $t->{function};



__END__

%TestML 0.1.0

num = 123
str = "O HAI"

33 == 44
foozle ~~ 'foo'


