#4.Modelクラス
######O/Rマッパー
O/Rマッパーは、本来異なる構造を持つリレーショナルデータベースとオブジェクト指向言語の間の橋渡しをする役割を持つ。

O/Rマッパーとして使用するのが、ActiveRecordである。

######データベース接続の事前設定
>/config/database.yml

に対して、設定を行う。  
```Ruby
default: &default 
  adapter: sqlite3 #=>接続するデータベースの種類
  pool: 5 #=>確保する接続プール
  timeout: 5000

development:
  <<: *default
  database: db/development.sqlite3 #=>対象プロファイルの接続するデータベース

test:
  <<: *default
  database: db/test.sqlite3

production:
  <<: *default
  database: db/production.sqlite3
```
初期状態でこのようなYAML(ヤムル)ファイルが生成されている。  
YAMLでは、パラメータ名 : 値というようにして表現する。

今回はこのままの設定で行うが、必要に応じて編集する。

######Modelクラスの作成
```Ruby
rails generate model モデル名 コラム名:データ型
```
このようにしてモデルを作成する。

今回は、以下のようなテーブルを持ったモデルを作成する。

|コラム名|データ型|
|:------:|:------:|
|isbn|string|
|title|string|
|price|integer|
|published|date|
|cd|boolean|

######マイグレーションファイルによるデータベースファイル作成
>/db/migrate

ディレクトリ内に数字列\_create\_books.rbファイルが生成されており、これを用いてデータベースを生成する。

```
rake db:migrate
```
このrakeコマンドを使用する。

データベースの作成ができたら、フィクスチャという機能によって、テストデータを作成する。

```
rake db:fixtures:load FIXTURES=books
```

######データベースファイルの閲覧
```
rails dbconsole
```

######データベースのデータの取得
コントローラクラスに以下のようにlistメソッドを記述する。
```Ruby
	def list
		@books = Book.all
	end
```
このallメソッドが[SELECT * FROM テーブル]の役割を果たしている。

次に、このデータを出力するためのビューを作成する。
コントローラクラスが、モデル(データベース)からデータを取り出してきて、ビューに反映するということを行っている。

######補足 : アプリケーションの実行環境を変更する
Railsには、Development、Test、Productionという、3つの開発環境が備わっている。
変更には、railsサーバーを立ち上げる際に、-e(-environment)というコマンドを追記してやることで変更可能である。

```Ruby
	rails s -e production #=>運用モード
```

