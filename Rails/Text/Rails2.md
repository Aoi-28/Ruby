#2.Controllerクラス(C)
######コントローラクラスの作成
```Ruby
	rails generate controller クラス名
```
######コントローラクラスの基本構文
コントローラクラス生成コマンドを実行すると自動でファイルが生成される。
>books(root)/app/controllers/...

のディレクトリに先ほど作成したコントローラクラスが格納されている。

```Ruby
	class HelloController < ApplicationController
	end

```
初期状態では、このような内容のクラスとなっている。  
ApplicationControllerクラスを継承している。  
ここにアクションメソッドを追加する。

```Ruby
	def index
		render text : "文字列"
	end
```
これがアクションメソッドである。  
メソッド内のrenderメソッドは、指定文字列を表示するためのメソッドである。  
※デバッグ用に使うため実用でない。

######ルーティング
>/config/routes.rb  

ここにルートを記述する。  
```Ruby
	match ':controller(/:action(:id))', via: [:get, :post, :patch]
```
ルートは、matchメソッドを用いて設定する。シンボルを用いて、URLとパラメータを指定する。

設定したルートは、ブラウザでURLを指定することで閲覧できる。  
今回は、
>http://localhost:3000/hello/index

と指定することで閲覧可能だ。