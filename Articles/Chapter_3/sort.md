## 3.8 sort操作符
sort操作符会按照字符的内部编码顺序对它们去排序，所以按照ASCII码排序的编码顺序结果会有些奇怪：
大写字符排在小写字符前面，数字排在字母前面，而标点符号则散落各处。
同样的sort操作符也需要给出一个指定的返回值对象，不会直接修改参数的