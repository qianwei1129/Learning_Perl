## 2.6 用代码点创建字符
这个感觉还挺实用的，可以通过字符的代码点(code point)，再通过chr()函数转换成字符
```perl
$alpha = chr(hex('03B1'))
$omaga = chr(0x03C9)
```