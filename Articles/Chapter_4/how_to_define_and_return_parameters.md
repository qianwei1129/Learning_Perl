## 4.1 子程序简介
子程序的定义和用法基本都和C、python差不多，就在调用的时候用的符号是&，只是在返回值这一块有点问题，perl中所有的子程序都有一个返回值，
那既然都有返回值，所以子程序执行过程中最后一次运算过程的结果，不管什么都会被当成返回值，如下
```perl
sub sum_fred_barney{
	print 1;
	$fred + $barney; # 这就是返回值
}

$fred = 3;
$barney = 4;

$result = &sum_fred_barney;
```
最后执行的表达式真的就是最后执行的表达式，而非子程序的最后一个语句，比如说下面这个子程序，就会返回较大值
```perl
sub sum_larger_fred_barney{
	if ($fred > $barney){
		$fred;
	}else{
		$barney;
	}
}
```
