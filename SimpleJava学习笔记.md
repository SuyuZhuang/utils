# Simple Java 学习笔记
https://www.programcreek.com/simple-java/


## 1. String And Arrays
### Java String's immutability
`String s = "abcd"` 声明时，s指向堆内存中的"abcd"，并且一旦产生就不能被改变。所有String的方法都没有改变本身，而是新new了一个String对象。

### substring()是怎样工作的
jdk6和jdk7中的工作方式不一样。首先，string背后其实是由`char[] value, int offset, int count`组成。在jdk6中，substring(i,j)并没有开辟新的数组，只是通过i,j改变了offset,count值。这样会导致一个问题，当原string s非常长的时候，它的substring仍然要保留所有内容。在jdk7中，改变了这个状况。substring()方法开辟了新的数组。

### String为什么要被设计为immutable的呢
- string pool
- security 作为网络连接、文件的参数，不能轻易被改变
- thread safe 线程安全

### length与length()的区别
- 首先，从现象来看，数组array使用length属性获取长度，而String使用length()获取长度
- 数组array一旦声明，长度就是固定的了

### 在JAVA中，如何快速检查出数组中是否包含某值
- using List
- using Set
- using Loop
- using Array.binarySearch(只能被用于已经排好序的数组中)

## 2. 常用的方法
### comparable vs. comparator
- comparable 是一个接口，需要实体类去实现接口，同时实现compareTo()方法
- comparator 需要写一个比较器，然后使用Collection.sort() 或者 Array.sort()等

### pass-by-value 按值传递

## 3. 类与接口
### Overriding重写 vs. Overloading重载
