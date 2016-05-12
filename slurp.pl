#!/usr/bin/perl

use strict;
use warnings;

my $perl_tag = shift || "v5.24.0";

sub sys {
    print STDERR "## @_\n";
    system @_ and die "command >@_< failed, rc: ".($? >> 8)
};

sys "git submodule init perl";
sys "git submodule update perl";
sys "cd perl && git checkout $perl_tag";

my $from = "perl/ext/PerlIO-encoding";
sys "mkdir -p lib/PerlIO";
sys "cp $from/encoding.pm lib/PerlIO/";
sys "cp $from/encoding.xs .";
sys "mkdir -p t";
sys "cp $from/t/* t";
sys "cp $from/../../t/charset_tools.pl t";
sys "sed -s 's/..\\/..\\/t\\/charset_tools.pl/t\\/charset_tools.pl/' -i t/*.t";





