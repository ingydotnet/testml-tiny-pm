# This test does not run TestML. It just checks the Compiler.

use Test::More tests => 4;
use TestML::Tiny;

# use XXX;
# Creating a new TestML::Tiny object will cause the TestML to be compiled.
my $t = TestML::Tiny->new(
    testml => (join '', <DATA>),
);
my $f = $t->{function};

my $d = $f->{data};
is scalar(@$d), 1,
    'Data section has 1 block';
my $b = $d->[0];
my @keys = keys %$b;
is @keys-1, 3, "Block has 3 points";
is $b->{Label}, 'Test one', "Label works";
is $b->{c}, 'carrot', "Point 'c' is correct";


__END__

%TestML 0.1.0
%BlockMarker ***
%PointMarker +++

*** Test one
+++ a: apple
+++ c: carrot
+++ d: date
