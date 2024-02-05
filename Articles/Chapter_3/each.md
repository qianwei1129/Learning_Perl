## 3.9 each操作符
每次数组调用each，会返回数组中下一个元素对应的两个值：数组索引与元素值
```perl
@LJF = qw/ a b c d /;

while(($index, $value) = each @LJF){
    print "$index: $value\n";
}
```