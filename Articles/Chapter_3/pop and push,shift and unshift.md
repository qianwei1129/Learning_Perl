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
