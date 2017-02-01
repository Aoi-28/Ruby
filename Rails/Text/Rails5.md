#5.Scaffolding機能
######Scafold生成
```Ruby
rails generate scaffold name コラム名 データ型
```
作成したscaffoldファイルからdbファイルをmigrateする。

```Ruby
rake db:migrate
```

ブラウザで表示すると、データベースの内容が整形されて表示され、更に、更新、削除などの機能も自動で生成される。

######URL
```Ruby
	rails generate scaffold books コラム名:データ型
	rake db:migrate
```
コマンドによって、booksテーブルを作成したとする。  
この時、Scaffold機能によって、自動的にビューが生成されているために、URLを指定することで、それぞれのページを表示することができる。

|URL|場所|
|:--:|:--:|
|/books|index|
|/books/1|id=1をshow|
|/books/new|new|
|/books/1/edit|id=1をedit

######ビューヘルパー
```Ruby
	link to("リンクテキスト", URL, OPTION)
```
これは、
```HTML
	<a href="URL" OPTION>リンクテキスト</a>
```
に対応している。

######before_actionメソッド
```Ruby
	before_action method, only: action
```
このメソッドによってactionを実行する前に、methodを先に実行する。