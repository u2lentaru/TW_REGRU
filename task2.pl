#!/usr/local/bin/perl

use strict;
use warnings;

package main;

use lib "lib";
use Animal;
use Cat;
  
my $cat = new Cat; 
$cat->method2(); 

# $cat->Animal::method2();

1;

# This is Cat class Method 2
# This is Animal class Method 2