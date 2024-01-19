# Learning_Perl
# 列表与数组

## 3.1 Perl与python中相同的地方
看了一遍，这里面的索引和python中一样都是从0开始递增，一个列表里面可能包含数字、字符串、undef值或是不同类型标量值的混合。
但是一般常见的是全是同类型的一组元素（例如全是字符串或者数字），访问数组元素的时候；并且如果下标不是整数，
Perl会自动舍去小数！！！（注意！不是四舍五入，是舍去小数！）；假如下标超出数组的末尾，则对应的值就是undef，如下：

```perl
$fred[0] = "a";
$fred[1] = "b";
$fred[2] = "c";

$fred[1] .= "abc" # 第二章中的表达式都可以用

$number = 2.71;
print $fred[$number - 1]; # 这个结果和$fred[1]一样
```

而在perl中如果索引值超过数组末尾的元素，数组会根据需要自动扩展，如果在扩展过程中需要创建增补元素，那么它们的默认值就是undef；  
```perl
$fred[0] = "abc";
$fred[99] = "def"; # 现在有99个undef元素
```

如果想要找出最后一个元素的索引值，比如说对于某个数组 ***LJF***，最后一个元素的索引值是 ***$#LJF***，注意索引值比数组个数小1，因为有0
并且可以通过“负的数组索引值”获取最后的元素，例如有效的负索引值-1，就可以获得最后一个元素
```perl
$end_number = $#LJF; # 可以获得最后一个数组的最后一个元素的索引
```
列表直接量，可以用小括号内用逗号隔开来表示的一串数据，包括可以用范围操作符..来创建它两侧标量之间的所有取值，注意只能从小到大“往上”累加
```perl
(1..100)    # 从1到100的整数序列
(1..5)      # 等同于(1,2,3,4,5)
(1.7..5.7)  # 等同于(1,2,3,4,5)，把小数部分去掉后取范围
```

## 3.2 qw简写

qw代表"quoted word"（用引号引用的词）或者"quoted by whitespace"（用空白引用的词），因为qw算引用的形式，所以不能把注释放在qw列表中。
所以我的习惯是，让每个元素单独成行，这样就能排成一列，，查看和增删都很方便
```perl
("a", "b", "c", "d")
qw(a b c d) # 前后两行的含义是一样的

qw(
    a
    b
    c
    d
) # 这样看上去比较方便
```

书上看到有趣的一句话，Perl的座右铭是 ***There's more Than One Way To Do It***  

因为qw创建列表时两边的符号可以任意选择，比如说<>、[]、()，都是符合要求的

## 3.3 列表的赋值和数组操作符

```perl
($data_1, $data_2, $data_3) = qw(a b c)
($data_1, $data_2) = qw<a b c d> # 忽略掉末尾两个元素
($data_1, $data_2) = qw[a]       # $data_2的值为undef
```

## 3.4 pop和push,shift和unshift
同python一样操作，只是pop和push是针对数组的末尾，而shift和unshift是针对数组的开头
```perl
@array = (5..9);
$temp_a = pop(@array); # 踢出了9
$temp_b = pop(@array); # 踢出了8
pop(@array)            # 踢出了7

@array = (5..9);
push(@array, 10);       # 现在@array是(5..10)
```

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

## 3.6 Perl最喜欢用的默认变量：$_
这就是一个有趣的默认变量，可以省略控制变量，Perl有许多默认变量，这是最常用的
```perl
foreach (1..10){ # 默认会用$_作为控制变量
    print "I can count to $_!\n";
}


$_ = "hi LJF!";
print; # 默认打印$_
```

## 3.7 reverse操作符
就是按照相反次序返回新的列表，但是注意，这个不会直接更改参数，加入返回值无处可去，那这种操作也就变得毫无意义
```perl
reverse @fred;          # 错误用法，不会更改@fred
@fred = reverse @fred;  # 诶这就对了！
```

## 3.8 sort操作符
sort操作符会按照字符的内部编码顺序对它们去排序，所以按照ASCII码排序的编码顺序结果会有些奇怪：
大写字符排在小写字符前面，数字排在字母前面，而标点符号则散落各处。
同样的sort操作符也需要给出一个指定的返回值对象，不会直接修改参数的

## 3.9 each操作符
每次数组调用each，会返回数组中下一个元素对应的两个值：数组索引与元素值
```perl
@LJF = qw/ a b c d /;

while(($index, $value) = each @LJF){
    print "$index: $value\n";
}
```

### 3.10 习题
1.写一个程序，读入一些字符串，每行一个，直到文件结尾为止。然后以相反顺序输出这个列表。
假如输入来自键盘，你需要在Unix 系统上Control+D 或在Windows 系统上键入Control+Z 来表示输入的结束。  

2.写一个程序，读入一些数字，每行一个，直到文件结尾为止。然后，根一个数字输出如下名单中相应的人名(请将这份名单写到程序里，也就是说的程序代码里应该出现这份名单)。
要求是，如果输入的数字是1、2、4禾那么输出的人名将是fred、betty、dino 和betty:
***fred betty barney dino wilma pebbles bamm-bamm***

3.写一个程序，读入一些字符串，每行一个，直到文件结尾为止。然后所有字符串按代码点排序后输出。
也就是说，如果键入的是fred、barrwilma、betty,输出应该显示barney betty fred wilma。
思考一下,所有串可以并在一行输出吗?或者分别在不同行输出?你能分别实现这两种输出吗?