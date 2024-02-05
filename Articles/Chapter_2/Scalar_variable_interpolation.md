## 2.5 标量变量内插
其实也就是输出时的问题，有一个很重点的问题是变量内插也称作“双引号内插”，因为这个内插只能在双引号中实现，单引号不行
```perl
$NJUCM = 985
print "\$NJUCM"                     # 输出的是转义符号的$ "NJUCM"
print 'The NJUCM is $NJUCM'         # The NJUCM is $NJUCM”
print "The NJUCM is $NJUCM"         # The NJUCM is 985
print "The NJUCM is %{NJUCM}s.\n"   # The NJUCM is 985s
```