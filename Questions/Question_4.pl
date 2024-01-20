#! perl
use warnings;
use utf8;

binmode(STDOUT,":encoding(gbk)");
binmode(STDIN,":encoding(gbk)");
binmode(STDERR,":encoding(gbk)");

sub max{
	if ($_[0] > $_[1]){
		$_[0];
	}else {
		$_[1];
	}
}