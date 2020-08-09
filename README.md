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
이름을 id, create_at, update_at 로 추가 시 중복 에러


REST 인증 없이 활용 
```
# app/controllers/application_controller.rb (전역, controller 별로 선언시에는 각 controller에 추가) 
    protect_from_forgery unless: -> { request.format.json? }
```