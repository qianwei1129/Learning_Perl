#! perl
use warnings;
use utf8;

binmode(STDOUT,":encoding(gbk)");
binmode(STDIN,":encoding(gbk)");
binmode(STDERR,":encoding(gbk)");

# 第一题
print "Question 1：\n";
$circle_length = 12.5 * 2 * 3.141592654;
print "半径为12.5时，圆周长为$circle_length\n";

# 第二题
print "Question 2: \n";
chomp($r = <STDIN>);
$circle_length = $r * 2 * 3.1415926;
print "半径为$r时，圆周长为$circle_length\n";

# 第三题
print "Question 3: \n";
chomp($r = <STDIN>);
if($r < 0){
	print "半径为$r时，圆周长为0\n";
}else{
	print "半径为$r时，圆周长为" . $r*2*3.1415926 . "\n";
}

# 第四题
print "Question 4: \n";
print "请你分两行输入两个数字\n";
print "请你输入第一个数字\n";
chomp($re_a = <STDIN>);
print "请你输入第二个数字\n";
chomp($re_b = <STDIN>);
print "结果是" . $re_a * $re_b;

# 第五题
print "Question 5: \n";
print "请你分两行输入一个数字一个字符串\n";
print "请你输入字符串\n";
$re_a = <STDIN>;
print "请你输入数字\n";
chomp($re_b = <STDIN>);
print $re_a x $re_b;
