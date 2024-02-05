## 3.7 reverse操作符
就是按照相反次序返回新的列表，但是注意，这个不会直接更改参数，加入返回值无处可去，那这种操作也就变得毫无意义
```perl
reverse @fred;          # 错误用法，不会更改@fred
@fred = reverse @fred;  # 诶这就对了！
```
