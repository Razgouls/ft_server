service mysql start
echo "CREATE DATABASE testdb;" | mysql -u root
echo "CREATE USER 'test'@'localhost';" | mysql -u root
echo "SET password FOR 'test'@'localhost' = password('password');" | mysql -u root
echo "GRANT ALL ON testdb.* TO 'test'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;" | mysql -u root