## 2.8 获取用户输入
相当于python中的input，会等用户输入，直到换行符（也即是回车键）为止，也是分享一个小技巧，可以通过这个方法来判断输入的是否为空行
```perl
#!perl

$line = <STDIN>;

if($line eq "\n"){
	print "That was just a blank line!";
}else{
	print "That line of input was: $ilne";
}
	
```
而在实际应用的时候，可以通过Chomp操作符将末尾的换行符给去掉，比如说...
```perl
chomp($text = <STDIN>);
```
!!!注意在输入输出有中文的时候
```perl
use utf8;
#引入utf8模块 脚本内的字符串使用utf8作为编码格式

binmode(STDOUT,":encoding(gbk)");
#标准输出使用gbk作为编码格式，也可以把gbk改为gb2312

binmode(STDIN,":encoding(gbk)");
#如果涉及到输入流，例如读文件，不加这条读中文文件会出现乱码


binmode(STDERR,":encoding(gbk)");
#如果异常错误中的字符串有中文，请加上STDERR，否则也会出现乱码

print "你好";
```