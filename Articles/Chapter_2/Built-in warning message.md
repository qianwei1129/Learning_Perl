## 2.3 内置警告信息
我们可以通过编译指令开启内置警告信息
```perl
#!usr/bin/perl
use warnings;
```
也可以在命令行调用程序是给出 ***-w***选项来启用警告机制，或者在#行启用警告选项，这样在把“12ljf34”当数字用的时候，就会报出警告
```perl
$ perl -w perl_practise.pl

# 或者

#！/usr/bin/perl -w
```

如果实在查不出信息在哪里，可以添加
```perl
use diagnostics;
```