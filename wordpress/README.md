## Set up
1. Create a .env file and put `USER` and `PASS` for your db
2. `docker-compose up -d`

## Wordpress
3. Set: `Settings > Wordpress Address: http://blog.domain.com`
4. Set: `Settings > Site Address: http://blog.domain.com`

# NGINXPROXYMANAGER
5. Create the proxy with ip
6. `wp-config.php` set `$_SERVER['HTTPS'] = 'on'`


