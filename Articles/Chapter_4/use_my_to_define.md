## 4.4 用my声明的词法变量
```perl
foreach (1..10) {
	my($a) = $_ * $_;
	print "$_ squared is $a.\n"
}
```
像这里就声明了一个只在循环内部生效的“私有变量”，$a，并且注意定义循环时候的格式，一定要学会括号的用法，
```perl
my $a, $b 	# 只定义了$a
my ($a, $b) # 定义了两个
```
