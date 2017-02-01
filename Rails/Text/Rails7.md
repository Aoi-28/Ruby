#ルーティング
######デフォルトページ
>localhost:3000/

ページを開いた時に、開くページを変更する。
>config/routes.rb

ファイルの中に、
```Ruby
	root 'コントローラ名#アクション名'
```
このように、rootメソッドをしよすることでデフォルトのページを変更できる。(非推奨)

######RESTfulインタフェースでのルーティング
REST(REpresentational State Transfer) : WEBアプリケーションの設計思想のことである。
ネットワーク上のコンテンツをすべてURLで表し、HTTPメソッドでアクセスする思想
HTTPメソッド : GET(取得),POST(作成),PATCH(更新),DELETE(削除)


```Ruby
	resources :name
```

######ルートの確認
>http://localhost:3000/rails/info/routes

もしくは、
>rake routes

コマンドを実行する。

