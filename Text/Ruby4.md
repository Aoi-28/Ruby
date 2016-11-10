##4.条件分岐
Rubyにおける条件分岐は主に、  

	- if文
	- unless文
	- case文

がある。

###4-1.Rubyにおける真偽値
Rubyでは真偽値は

|真偽値|概要|
|--|---|
|真 |falseとnilを除くオブジェクトすべて |
|偽 |falseとnil|

となっている。

###4-2.if文
Rubyでのif文は  

```
	if 条件式 then #thenは省略可能
		真の場合の処理
	end
```
のようにthen~endがブロックになっている。ブロックの書き方が異なること以外は他のプログラム言語とほぼ同じである。  
また、条件が複数ある場合、
```
	if 条件式　then
		真の場合の処理
	elsif 条件式2 then #elsifであることに注意
		真の場合の処理
	else 
		処理
	end
```
のようにする。

###4-3.unless文
unless文はif文の反対の処理を行う。  
構文は
```
	unless 条件式 then 
		真の場合の処理
	end
```
である。  
条件式が偽の場合に処理が実行される。

###4-4.case文
case文は、条件がいくつもある場合に有効な条件分岐である。
javaやCのswitch文に相当する。  
構文は
```
	case 比較したいオブジェクト
		when 値1 then
			処理
		when 値2 then
			処理
		when 値2 then
			処理
		else
			処理
		end
```
である。

###4-5.修飾子
if文やunless文は、実行したい処理の後ろに書くことができる。

```ruby  
puts "if" if true	
```