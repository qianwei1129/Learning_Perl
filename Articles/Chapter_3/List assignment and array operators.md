## 3.3 列表的赋值和数组操作符

```perl
($data_1, $data_2, $data_3) = qw(a b c)
($data_1, $data_2) = qw<a b c d> # 忽略掉末尾两个元素
($data_1, $data_2) = qw[a]       # $data_2的值为undef