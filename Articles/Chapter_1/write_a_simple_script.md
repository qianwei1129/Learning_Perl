## 1.3 编写一条简单的程序

然后我们打开Notepad++，在里面输入以下内容，不建议直接复制，因为我第一次敲这个代码的时候就用错双引号然后报错了，可以尝试自己敲一遍
```perl
# !usr/bin/perl
print "hello world\n";
```
然后将文件保存，在Notepad++中可以设置保存格式为perl格式，这样尾缀就会是.pl，记住保存的地址后，
cd到该地址（在cmd中如果要换盘的话，比如说从C盘到D盘，要先输入一个D:，然后再cd+具体位置）
例如我的位置是在D:\APP_ALL\Notepad++\perl_practise.pl，那就依次输入
```cmd
D:
cd D:\APP_ALL\Notepad++
perl perl_practise.pl
```
就可以运行得到如下结果
```perl
"hello world"
```

我看了一些程序代码，第一行是注释，含义是用来执行这个程序的路径， 然后传统意义上一般会写成 **#!perl**，这样让人一眼就知道这是perl程序
最后一行的转移符号比较好理解，和C、C++中都差不多