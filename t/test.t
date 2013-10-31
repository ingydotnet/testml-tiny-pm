use Test::More tests => 1;
use TestML::Tiny;

my $t = TestML::Tiny->new(
    testml => (join '', <DATA>),
);

is ref($t), 'TestML::Tiny', 'TestML::Tiny::new returns TestML::Tiny object';

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
