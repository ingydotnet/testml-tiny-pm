use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME => 'TestML::Tiny',
  VERSION => '0.000001',
  PREREQ_PM => {
    'Carp' => '0',
    'Test::More' => '0.99',
  },
  clean => { FILES => 'MANIFEST TestML*' },
);
