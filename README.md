
[![Image from Gyazo](https://i.gyazo.com/ee430924f7b41837be317d87374cbe43.gif)](https://gyazo.com/ee430924f7b41837be317d87374cbe43)

# README

## Users
|Column                |Type   |Options                |
|nickname              |string |null:false, unique:true|
|email                 |string |null:false, unique:true|
|encrypted_password    |string |null:false             |
|first_name            |string |null:false             |
|last_name             |string |null:false             |
|first_name_kana       |string |null:false             |
|last_name_kana        |string |null:false             |

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