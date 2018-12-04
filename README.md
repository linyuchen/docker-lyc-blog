# docker构建

下载数据库并放入`data/mysql-data`,
下载wordpress并放入`data/wordpress`

运行`build.sh`

编辑`run.sh`, 把端口修改成自己想要的

运行`run.sh`，即可启动服务

## 修改站点url
```sql
update wp_options set option_value='http://localhost:8101'  where option_name='siteurl';
```

## nginx转发设置

如果是主机转发到docker的端口，那么主机的转发设置要把host固定住。

nginx的设置：
```
proxy_set_header Host $host;
```
