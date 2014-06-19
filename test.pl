#!/usr/bin/env perl

use blib;
use SetLocale;

$LOC = 'fr_FR';

sub assert
{
    my($pcode) = @_;
    my $ret = eval $pcode;
    if($@){
        print STDERR "ERROR\t$pcode\n\n$@";
        exit 1;
    }
    printf "%s\t%s\n", ($ret ? 'PASS' : 'FAIL'), $pcode;
}

# Ensures that we switch LC_NUMERIC to a locale that uses a comma instead
# of a decimal point.
assert(q{setlocale(1, $LOC) eq $LOC});

# Ensures that the locale has changed how floating point is converted to
# a string.
assert(q{(sprintf '%.2f', 5.20) eq '5,20'});

# This works because dotted-decimal notation does not use sprintf to
# convert a floating-point to a string, like the previous test.
assert(q{require 5.20.0});

# Perl converts this to 5.200.0 which should fail, but not error out.
assert(q{require 5.020});

