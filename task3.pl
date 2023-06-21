#!/usr/local/bin/perl

use strict;
use warnings;

my $datetime = '2016-04-11 20:59:03';

if ( $datetime =~ m/(([0-9]{4})-(1[0-2]|0[1-9])-(3[01]|0[1-9]|[12][0-9]))\s((2[0-3]|[01][0-9]):([0-5][0-9]):([0-5][0-9]))/ ) {
        my $date = $1;
        my $time = $5;
        print $date, "\n", $time, "\n";
   }

1;

# 2016-04-11
# 20:59:03