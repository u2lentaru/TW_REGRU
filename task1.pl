#!/usr/local/bin/perl
use strict;
use warnings;

my @arr = ( qw/ 7 1 3 4 2 4 6 5 5 / );

my $flag=1;
while($flag)
    {
        $flag=0;
        for(my $i=0; $i<@arr-1; $i++)
        {
            if($arr[$i]>$arr[$i+1])
            {
                @arr[$i, $i+1]=@arr[$i+1, $i];
                $flag=1;
                last;
            }
        }
    }

my ($low, $mid, $found_key, $num, $key, $index, $high) = (0, 0, 0, 0, 0, 0, $#arr);

print "Enter # : ";
chomp( $key = <STDIN> );
 
while( ( $low <= $high ) && !$found_key ) {
  $mid = int(( $low + $high ) / 2);
  if( $key == $arr[$mid] ) {
    $found_key = 1;
    $index = int( $mid );
  }

  elsif( $key < $arr[$mid] ) {
    $high = $mid - 1;
  }

  else {
    $low = $mid + 1;
  }
}

if( $found_key ) {
  print "MATCH\n";
}

else {
  print "NOT_MATCH\n"; 
} 
1;

# Enter # : 7
# MATCH

# Enter # : 9
# NOT_MATCH