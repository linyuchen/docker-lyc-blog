# docker构建并启动

docker-compose up -d

# 配置nginx转发到docker

复制`nginx`文件夹中的所有文件到`/etc/nginx/`

重新加载nginx配置: `nginx -s reload`

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
