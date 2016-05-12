use ExtUtils::MakeMaker;

WriteMakefile( NAME          => 'PerlIO::encoding',
	       VERSION_FROM  => 'lib/PerlIO/encoding.pm',
	       PREREQ_PM     => { 'Test::More' => 0.54 },
	       ABSTRACT_FROM => 'lib/PerlIO/encoding.pm',
	       AUTHOR        => 'Salvador Fandino <sfandino@yahoo.com>' );
