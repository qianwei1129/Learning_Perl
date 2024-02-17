#! perl
use warnings;
use utf8;

binmode(STDOUT,":encoding(gbk)");
binmode(STDIN,":encoding(gbk)");
binmode(STDERR,":encoding(gbk)");

# name: total
sub total {
	my $re;
	foreach (@_){
		$re += $_;
	}
	$re
}

my @fred = qw{1 3 5 7};
my $re = total(@fred);
print $re;
