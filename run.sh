#~/Library/Application Support/Postgres/var-10
# ~/code/Work/MyWuu/postgresql-data

basepath=$(cd `dirname $0`; pwd)
docker run -p 8101:8101 -it -v $basepath/data:/opt lyc-blog
