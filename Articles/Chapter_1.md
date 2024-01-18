# Learning_Perl
# 写在前面

## 1.1 为什么我会写这个？
今天是2024年1月17日，我准备考南京医科大学的研究生，考603数学与程序设计大纲，其中涉及“Perl脚本程序设计”
于是我开始自学perl语言，用的书是“小骆驼书”《Perl语言入门》，考试大纲如下：

- 数据类型
    - 内置数据结构
    - 变量
    - 名字
    - 标量
    - 上下文
    - 列表值
    - 数组
    - 散列
    - 类型团
    - 文件句柄
- 操作符
    - 项和列表
    - 箭头
    - 自增和自减
    - 指数
    - 表意一元
    - 绑定
    - 加减乘除
    - 移位
    - 关系
    - 相等
    - 智能匹配
    - 范围
    - 条件
    - 逻辑
- 语句和声明
    - 简单语句
    - 复合语句
    - if和unless语句
    - 模式匹配
    - 数据结构
    - 模块
    - 对象
    - 重载
- Perl接口技术
    - 进程间通信
    - 编译
    - 命令行接口
  
## 1.2 我编写Perl程序的环境

我是在Windows10系统下选择了Notepad++作为编辑器，然后在[perl](https://strawberryperl.com/)下载perl语言后，通过cmd+R打开命令行提示符，验证是否安装成功
```cmd
perl -v
```
然后发现了如下的报错***perl Locale 'Chinese (Simplified)_China.936' is unsupported***，
可以通过以下命令行消除这一提示
```cmd
set LC_ALL=C
set LANG=C
```

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