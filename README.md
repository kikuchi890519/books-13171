## ð OurLibï¼ã¿ããªã®å³æ¸é¤¨ï¼
## èª­æ¸ãåºããããããã¨ãç®çã¨ããSNS

![OurLibç»å](https://user-images.githubusercontent.com/80946751/119113266-e44f6500-ba5f-11eb-9fa6-bd3a017da556.jpeg)

## ð æ¦è¦
### èªåã®ãªã¹ã¹ã¡ã®æ¬ãåäººãªã©ã«å±æããã¢ããª

## ð APP URLï¼ããã­ã¤å®äºæ¬¡ç¬¬è¨è¼ï¼

## ð¤ ãã¹ãç¨ã¢ã«ã¦ã³ã
ã¡ã¼ã«ã¢ãã¬ã¹ / test@gmail.com  
ãã¹ã¯ã¼ã / 12345k

## ð» å©ç¨æ¹æ³
- ããããã¼ã¸ããæ°è¦ç»é²ã»ã­ã°ã¤ã³
- ããããã¼ã¸ã¸é·ç§»ãã
- æ°è¦æç¨¿ã¯å³ä¸ã®ãç´¹ä»ããã¿ã³ãã¯ãªãã¯  
https://user-images.githubusercontent.com/80946751/119115165-d7337580-ba61-11eb-9b27-fdd222341a08.mp4

- ç´¹ä»å®äºå¾ã¯ä¸è¦§ç»é¢ã¸é·ç§»
- æç¨¿ããç»åãã¯ãªãã¯ããã¨æ¬ã®è©³ç´°ç»é¢ã¸é·ç§»  
https://user-images.githubusercontent.com/80946751/119119317-0f3cb780-ba66-11eb-839a-2ef3ba5d1e23.mp4

- ç´¹ä»èæ¬äººã¯æç¨¿ããæå ±ãç·¨éã»åé¤ãããã¨ãå¯è½  
https://user-images.githubusercontent.com/80946751/119119887-9db13900-ba66-11eb-83b3-13697cea544c.mp4

- ä¸è¦§ç»é¢ããç´¹ä»ããã¦ã¼ã¶ã¼ãã¯ãªãã¯ããã¨æç¨¿ä¸è¦§æå ±ã¸é·ç§»  
https://user-images.githubusercontent.com/80946751/119120236-06001a80-ba67-11eb-9753-21d3c67e8e8f.mp4

## â èª²é¡è§£æ±º  
èª­æ¸ãåºãããããã  
è²ããªäººãèª­æ¸ãç¿æ£åãããã¨  
èª­æ¸ã®å­¦ã³ãå±æããã

## â¨ æ©è½ä¸è¦§
|       æ©è½        |                 æ¦è¦                       |
|------------------|--------------------------------------------|
| ã¦ã¼ã¶ã¼ç®¡çæ©è½    | æ°è¦ç»é²ã»ã­ã°ã¤ã³ã»ã­ã°ã¢ã¦ããå¯è½             |
| æç¨¿æ©è½           | ç»åä»ãã§æç¨¿ãå¯è½                          |
| æç¨¿ä¸è¦§è¡¨ç¤ºæ©è½    | åæç¨¿æå ±ãä¸è¦§è¡¨ç¤ºãã                       |
| æç¨¿è©³ç´°è¡¨ç¤ºæ©è½    | åæç¨¿æå ±ã®è©³ç´°è¡¨ç¤ºãå¯è½                     |
| æç¨¿ç·¨éåé¤æ©è½    | ç´¹ä»èæ¬äººã¯æç¨¿ç·¨éã»åé¤ãå¯è½                |
| ã¦ã¼ã¶ã¼ãã¼ã¸æ©è½   | ã¦ã¼ã¶ã¼ã®æç¨¿æå ±ãä¸è¦§ãããã¨ãå¯è½          |

## å®è£ããæ©è½ã«ã¤ãã¦ã®ç»åãGIFããã³ãã®èª¬æ

## ð è¿½å äºå®ã®æ©è½
- ã³ã¡ã³ãæ©è½  
- è²¸ãã¦ã­æ©è½

## ð¥ ã­ã¼ã«ã«ã§ã®åä½æ¹æ³
$ git clone https://github.com/kikuchi890519/books-13171  
$ cd books-13171  
$ bundle install  
$ rails db:create  
$ rails db:migrate  
$ rails s  
http://localhost:3000  

## ð éçºç°å¢
- VScodeï¼Visual Studio Codeï¼
- Ruby 2.6.5
- Rails 6.0.3.4
- mysql2 0.5.3
- JavaScript
- gem 3.0.3

## ð­ DBè¨­è¨
## Usersãã¼ãã«

|Column                |Type   |Options                |
|----------------------|-------|-----------------------|
|nickname              |string |null:false, unique:true|
|email                 |string |null:false, unique:true|
|encrypted_password    |string |null:false             |

### Association
- has_many :books
- has_many :orders
- has_many :likes

## Booksãã¼ãã«
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

## Likesãã¼ãã«
|Column         |Type         |Options          |
|---------------|-------------|-----------------|
|user           |references   |foreign_key: true|
|book           |references   |foreign_key: true|

### Association
- belongs_to    :user
- belongs_to    :book