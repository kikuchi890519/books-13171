## 📖 OurLib（みんなの図書館）
## 読書を広くすすめることを目的としたSNS

[![Image from Gyazo](https://i.gyazo.com/ee430924f7b41837be317d87374cbe43.gif)](https://gyazo.com/ee430924f7b41837be317d87374cbe43)

## 📝 概要
自分のオススメの本を友人などに共有するアプリ

## 🌐 APP URL（デプロイ完了次第記載）

## 🤖 テスト用アカウント
メールアドレス / test@gmail.com
パスワード / 12345k

## 💻 利用方法
- トップページから新規登録・ログイン
- 新規投稿は右下の「紹介」ボタンをクリック
- 紹介完了後は一覧画面へ遷移
- 本情報の詳細は一覧画面の画像をクリック

## ✅ 課題解決
#### 読書を広くすすめたい
#### 色んな人が読書を習慣化すること
#### 読書の学びを共有したい

## 機能一覧
|       機能        |                 概要                       |
|------------------|--------------------------------------------|
| ユーザー管理機能    | 新規登録・ログイン・ログアウトが可能             |
| 投稿機能           | 画像付きで投稿が可能                          |
| 投稿一覧表示機能    | 各投稿の情報を一覧表示する                     |
| 投稿詳細表示機能    | 紹介者本人は投稿編集・削除が可能                |
| ユーザーページ機能   | ユーザーの投稿情報を一覧することが可能          |


## 実装した機能についての画像やGIFおよびその説明

## 追加予定の機能
・コメント機能
・貸してね機能

## ローカルでの動作方法
$ git clone https://github.com/kikuchi890519/books-13171
$ cd books-13171
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s
http://localhost:3000

## 開発環境

## DB設計
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
|Column             |Type       |Options          |
|-------------------|-----------|-----------------|
|name               |string     |null:false       |
|title              |string     |null:false       |
|author             |string     |null:false       |
|publishing_company |integer    |null:false       |
|category_id        |integer    |null:false       |
|summary            |text       |null:false       |
|output             |text       |null:false       |
|price              |integer    |null:false       |
|user               |references |foreign_key: true|

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

## Ordersテーブル
|Column         |Type         |Options          |
|---------------|-------------|-----------------|
|user           |references   |foreign_key: true|
|book           |references   |foreign_key: true|

### Association
- belongs_to    :user
- belongs_to    :book
- has_one       :delivery

## Deliveriesテーブル
|Column             |Type       |Options          |
|-------------------|-----------|-----------------|
|post_code          |string     |null:false       |
|city_id            |integer    |null:false       |
|municipality       |string     |null:false       |
|address            |string     |null:false       |
|building_name      |string     |                 |
|phone_number       |string     |null:false       |
|order              |references |foreign_key: true|

### Association
- belongs_to     :order

