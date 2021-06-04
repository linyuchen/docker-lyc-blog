# docker构建并启动

docker-compose -f stack.yml up -d

## 修改站点url
```sql
update wp_options set option_value='http://blog.linyuchen.net'  where option_name='siteurl';
```

## nginx转发设置

如果是主机转发到docker的端口，那么主机的转发设置要把host固定住。

nginx的设置：
```
proxy_set_header Host $host;
```
