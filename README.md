# SIMPLE_BLOG

mysql2 오류로 실행불가 시
```
gem install mysql2 -v 0.4.10 -- --with-cppflags=-I/usr/local/opt/openssl/include --with-ldflags=-L/usr/local/opt/openssl/lib
```

디버그
```
rails s -b 0.0.0.0 -p 8080
```

crud 생성

``` 
rails g scaffold [CRUD 이름] 원소:타입(작성하지 않을시 기본 string{varchar(255)})  ...
rails g scaffold Article nickname title content:text
```

만약 소스에서 db를 만드려면
config/database.yml 작성 후
```
rails db:migrate
```
자동으로 id bigint(20, AI PK), create_at datetime(6), update_at datetime(6) 추가함 
