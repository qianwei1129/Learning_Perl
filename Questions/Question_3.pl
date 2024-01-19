#! perl
use warnings;
use utf8;

binmode(STDOUT,":encoding(gbk)");
binmode(STDIN,":encoding(gbk)");
binmode(STDERR,":encoding(gbk)");

# 第一题
print "Question 1：\n";
print reverse <STDIN>;

# 第二题
print "Question 2: \n";
@data = qw/ fred betty barney dino wilma pebbles bamm-bamm /;
chomp(@serial_number = <STDIN>);

foreach(@serial_number){
	print "$data[$_ - 1]\n";
}

# 第三题
chomp(@lines = <STDIN>);
@sorted = sort @lines;
print "@sorted\n";

print sort <STDIN>;