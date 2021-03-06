##7.クラス
----------------------
###7-1.クラスとインスタンス
Rubyでのクラスは、オブジェクトを生成するための型のようなものである。  
Rubyにおける値は、すべてオブジェクトであり、これらのオブジェクトは、何らかのクラスに属することになる。  

例えば、配列オブジェクト(配列)はArrayクラス、文字列はStringクラスに属している。  
インスタンスは、これらのクラスから作成されるオブジェクトそのものである。  

新しいオブジェクトを生成するためには、.newメソッドを用いる。

```ruby
オブジェクト変数 = クラス名.new(引数)
```
※クラスは大文字ではじめなければ行けない。


###7-2.initializeメソッド
initializeメソッドは、javaで言うコンストラクタのことで、これを定義しておくことで.newメソッドでクラスからオブジェクトを生成する際に初期化のためにまずこれを読み込みに行く。

```ruby
	def initialize(myname = デフォルト値)
		@name = myname
	end
```

このように定義する。この時、.newメソッドでオブジェクトを生成するときに渡した引数がmynameに渡されるが、何も指定しなかった場合は、デフォルト値がmynameに格納される。

###7-3.インスタンス変数とインスタンスメソッド
インスタンス変数 : 「@」で始まる変数のことで、インスタンス(実体)ごとに個別の値を持つことができる。

つまり、インスタンス変数は.newメソッドで生成したオブジェクトに対して値を持つので、AとBという2つのインスタンスがあった場合は、それぞれのインスタンス変数は、全くの別物である。

###7-4.アクセスメソッド 
Rubyでは、javaのように、オブジェクト外部からインスタンスメソッドを参照したり変更したりできない。

これを実現可能にするためには、アクセスメソッドを実装すれば良い。  
アクセスメソッドは、インスタンスメソッドに参照したりするようなメソッドを定義してあげれば良い。

また、アクセスメソッド定義として、

|定義|意味|
|----|----|
|attr_reader :name|参照のみ可能|
|attr_writer :name|変更のみ可能|
|attr_accessor :name|参照変更両方可|

が使える

###7-5.self
インスタンスメソッド内で、selfという自身のインスタンスのメソッドのレシーバを指す変数が使用できる。

メソッドを呼び出した時のインスタンス名を自動的に補完してくれる変数である。

###7-6.クラスメソッド
クラスメソッドは、クラスそのものをレシーバとするメソッドのことである。

クラスメソッドは、
```Ruby
	class << クラス名
		処理、メソッド 
	end
```
もしくは、
```Ruby
	def クラス名.メソッド名
		処理
	end
```
という記述方法で実装できる。

###7-7.クラス変数
クラス変数は変数名の先頭に[@@]がついた変数で、クラスの中であればインスタンスを超えて値を参照できる。

*処理のカウントなどに使える

###7-8.変数
改めて、変数に関して、ローカル変数とグローバル変数とインスタンス変数とクラス変数についてまとめる。  

	ローカル変数 : メソッドの中で使用できる変数のことで、メソッドの中で定義した通常の変数のことをいう。  
	グローバル変数 : 変数名先頭に$がついた変数で、プログラム内どこでも使用できる。極力この変数は使わないのがベター  
	インスタンス変数 : 変数名先頭に@がついた変数で、インスタンスごとに固有の値を持つ変数。インスタンスによって値が異なる場合もあるのでどの変数にどの値が入っているか注意が必要  
	クラス変数 : 変数名先頭に@@がついた変数で、クラス内であれば、インスタンスを超えての参照が可能

###7-9.メソッド制限
RubyにもPublic や Privateのようなメソッド等の制限があり使用できる。

###7-10.継承
クラスの継承は、  
```Ruby
	class クラス名 < スーパークラス名(親クラス)
		定義
	end
```
でできる。

###7-11.aliasとundef
######alias
aliasは、すでに存在するメソッドに別の名前を割り当てる場合に使うものである。

```Ruby
	alias 別名 元の名前
```

このようにするとメソッドに名前空間をつけることができる。

######undef
undefは名前の通り、あったメソッドをなかったことにする機能である。

```Ruby
	undef メソッド名
```

###7-12.モジュール
モジュールは、機能の部分をまとめた集合体で、

- インスタンスを持つことができない  
- 継承できない

と言った特徴がある。

######モジュールの使い方
include定義 : モジュールで定義したメソッドや定数をクラスの中に組み込むことができる。(Mix-In)

すでにクラスにスーパークラスを継承している場合、それ以上継承することができないため、モジュールを使うことで対処することができる。

######モジュールの作り方
```Ruby
module モジュール名(大文字)
	処理
end
```

module_function :名前(シンボル)

