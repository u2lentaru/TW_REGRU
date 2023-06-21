package Animal;

use strict;
use warnings;
  
sub new 
{
    my $class = shift;
      
   bless {}, $class; 
}
  
sub method1 
{
    my $this = shift;
    print("This is Animal class Method 1\n");
}
  
sub method2 
{
    my $this = shift;
    print("This is Animal class Method 2\n");
}

1;