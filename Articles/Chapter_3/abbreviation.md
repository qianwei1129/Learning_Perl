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