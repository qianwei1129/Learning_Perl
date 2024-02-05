## 3.5 splice操作符和字符串中的数组内插
```perl
splice #array, start_position, element_number, replace_array

# array：针对着要操作的数组
# start_position：开始操作的位置
# element_number：针对后面几个元素进行操作
# replace_array：替换数组

@array = qw(a b c d);

@removed = splice @array, 2;
# 从原来数组中删除@array[2]后的内容并传递给@removed
# @removed 为 (c, d)
 
@removed = splice @array, 2, 1;
# 从原来数组中删除@array[2]后1个内容并传递给@removed
# @removed 为 (c)

@removed = splice @array, 2, 1, qw(e, f);
# 原数组变为qw(a b e f d)

@removed = splice @array, 2, 0, qw(e);
# 原数组变为qw(a b e c d)
# 注意，这里是把 索引=2 的位置替换成最后一个数组 
```