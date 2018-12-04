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
