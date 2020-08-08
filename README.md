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
rails g scaffold [CRUD 이름] 원소:타입  ...
```


controller 