## 📖OurLib（みんなの図書館）
## 読書を広くすすめることを目的としたSNS

[![Image from Gyazo](https://i.gyazo.com/ee430924f7b41837be317d87374cbe43.gif)](https://gyazo.com/ee430924f7b41837be317d87374cbe43)

## 📝概要
自分のオススメの本を友人などに共有するアプリ

## 🌐APP URL（デプロイ完了次第記載）

## テスト用アカウント
メールアドレス/test@gmail.com
パスワード/12345k

## 💻利用方法
・トップページから新規登録・ログイン
・新規投稿は右下の「紹介」ボタンをクリック
・紹介完了後は一覧画面へ遷移
・本情報の詳細は一覧画面の画像をクリック

## 課題解決
読書を広くすすめたい
色んな人が読書を習慣化すること
読書の学びを共有したい

## 洗い出した要件

## 実装した機能についての画像やGIFおよびその説明

## 実装予定の機能
出品機能
貸してね機能

## ローカルでの動作方法
$ git clone https://github.com/kikuchi890519/books-13171
$ cd books-13171
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s
http://localhost:3000


## DB設計
## Users
|Column                |Type   |Options                |
|nickname              |string |null:false, unique:true|
|email                 |string |null:false, unique:true|
|encrypted_password    |string |null:false             |

### Association
- has_many :books
- has_many :orders
- has_many :likes

## Books
|Column             |Type       |Options          |
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

## Likes
|Column         |Type         |Options          |
|user           |references   |foreign_key: true|
|book           |references   |foreign_key: true|

### Association
- belongs_to    :user
- belongs_to    :book

## Order
|Column         |Type         |Options          |
|user           |references   |foreign_key: true|
|book           |references   |foreign_key: true|

### Association
- belongs_to    :user
- belongs_to    :book
- has_one       :delivery

## Deliveries
|Column             |Type       |Options          |
|post_code          |string     |null:false       |
|city_id            |integer    |null:false       |
|municipality       |string     |null:false       |
|address            |string     |null:false       |
|building_name      |string     |                 |
|phone_number       |string     |null:false       |
|order              |references |foreign_key: true|

### Association
- belongs_to     :order

