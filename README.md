## 📖 OurLib（みんなの図書館）
## 読書を広くすすめることを目的としたSNS

![OurLib画像](https://user-images.githubusercontent.com/80946751/119113266-e44f6500-ba5f-11eb-9fa6-bd3a017da556.jpeg)

## 📝 概要
自分のオススメの本を友人などに共有するアプリ

## 🌐 APP URL（デプロイ完了次第記載）

## 🤖 テスト用アカウント
メールアドレス / test@gmail.com  
パスワード / 12345k

## 💻 利用方法
- トップページから新規登録・ログイン
- トップページへ遷移する
- 新規投稿は右下の「紹介」ボタンをクリック
https://user-images.githubusercontent.com/80946751/119115165-d7337580-ba61-11eb-9b27-fdd222341a08.mp4

- 紹介完了後は一覧画面へ遷移
- 投稿した画像をクリックすると本の詳細画面へ遷移
https://user-images.githubusercontent.com/80946751/119119317-0f3cb780-ba66-11eb-839a-2ef3ba5d1e23.mp4

- 紹介者本人は投稿した情報を編集・削除することが可能
https://user-images.githubusercontent.com/80946751/119119887-9db13900-ba66-11eb-83b3-13697cea544c.mp4

- 一覧画面から紹介したユーザーをクリックすると投稿一覧情報へ遷移
https://user-images.githubusercontent.com/80946751/119120236-06001a80-ba67-11eb-9753-21d3c67e8e8f.mp4

## ✅ 課題解決  
読書を広くすすめたい  
色んな人が読書を習慣化すること  
読書の学びを共有したい

## ✨ 機能一覧
|       機能        |                 概要                       |
|------------------|--------------------------------------------|
| ユーザー管理機能    | 新規登録・ログイン・ログアウトが可能             |
| 投稿機能           | 画像付きで投稿が可能                          |
| 投稿一覧表示機能    | 各投稿情報を一覧表示する                       |
| 投稿詳細表示機能    | 各投稿情報の詳細表示が可能                     |
| 投稿編集削除機能    | 紹介者本人は投稿編集・削除が可能                |
| ユーザーページ機能   | ユーザーの投稿情報を一覧することが可能          |

## 実装した機能についての画像やGIFおよびその説明

## 🎁 追加予定の機能
- コメント機能  
- 貸してね機能

## 🚥 ローカルでの動作方法
$ git clone https://github.com/kikuchi890519/books-13171  
$ cd books-13171  
$ bundle install  
$ rails db:create  
$ rails db:migrate  
$ rails s  
http://localhost:3000  

## 👀 開発環境
- VScode（Visual Studio Code）
- Ruby 2.6.5
- Rails 6.0.3.4
- mysql2 0.5.3
- JavaScript
- gem 3.0.3

## 💭 DB設計
## Usersテーブル

|Column                |Type   |Options                |
|----------------------|-------|-----------------------|
|nickname              |string |null:false, unique:true|
|email                 |string |null:false, unique:true|
|encrypted_password    |string |null:false             |

### Association
- has_many :books
- has_many :orders
- has_many :likes

## Booksテーブル
|Column                |Type       |Options          |
|----------------------|-----------|-----------------|
|name                  |string     |null:false       |
|title                 |string     |null:false       |
|author                |string     |null:false       |
|publishing_company_id |integer    |null:false       |
|category_id           |integer    |null:false       |
|summary               |text       |null:false       |
|output                |text       |null:false       |
|user                  |references |foreign_key: true|

### Association
- belongs_to :user
- has_one    :order
- has_many :likes

## Likesテーブル
|Column         |Type         |Options          |
|---------------|-------------|-----------------|
|user           |references   |foreign_key: true|
|book           |references   |foreign_key: true|

### Association
- belongs_to    :user
- belongs_to    :book