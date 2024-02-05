## 3.6 Perl最喜欢用的默认变量：$_
这就是一个有趣的默认变量，可以省略控制变量，Perl有许多默认变量，这是最常用的
```perl
foreach (1..10){ # 默认会用$_作为控制变量
    print "I can count to $_!\n";
}


$_ = "hi LJF!";
print; # 默认打印$_
```
