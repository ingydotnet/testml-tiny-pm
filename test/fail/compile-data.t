# This test does not run TestML. It just checks the Compiler.

use Test::More tests => 4;
use TestML::Tiny;

# Creating a new TestML::Tiny object will cause the TestML to be compiled.
my $t = TestML::Tiny->new(
    testml => (join '', <DATA>),
);

is ref($t), 'TestML::Tiny',
    'TestML::Tiny::new returns TestML::Tiny object';
my $f = $t->{function};
is ref($f), 'TestML::Tiny::Function',
    'Function exists and is TestML::Tiny::Function object';
my $d = $f->{data};
is ref($d), 'ARRAY',
    'Data section is an array';
is scalar(@$d), 3,
    'Data section has 3 blocks';

__END__

%TestML 0.1.0

c = 'xyz'
*a.b(*c) == *d

=== Test one
--- a: apple
--- c: carrot
--- d: date


===
--- a
Artists Anonymous
--- c
Christmas Carole
--- d
Dear Diary


=== Test Three
--- a: Adam Ant
--- b
Bill Bailey
brought beer
