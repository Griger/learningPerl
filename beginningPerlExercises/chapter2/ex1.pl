use warnings;
use strict;

print "Currency converter\n\nPlease enter the exchange rate: ";
my $yen = <STDIN>;

print "Now enter an amount of yen: ";
chomp(my $amount = <STDIN>);


print "${amount}¥ is ", $amount/$yen, "£\n";
