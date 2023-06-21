package Cat;

use strict;
use warnings;
  
our @ISA = qw(Animal); 

# use base qw(Animal);

sub method2
{
    my $this = shift;
    print("This is Cat class Method 2\n");
    Animal::method2();
}

1;