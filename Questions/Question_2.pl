#! perl
use warnings;
# binmode(STDOUT,":encoding(gb3212)");

$circle_length = 12.5 * 2 * 3.141592654;

print encode("gb3212", "半径为12.5时，圆周长应该为$circle_length"); 