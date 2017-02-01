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