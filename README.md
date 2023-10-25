# Database Management with MySQL

## Databases

Create a database

> create a database named myDB

```
CREATE DATABASE myDB;
```

To use a database

> Use the myDB database

```
USE myDB;
```

To drop a database

> delete myDB database

```
DROP DATABASE myDB;
```

Disable Modification  
cannot make any modifications, can access data only.

> make myDB read only.

```
ALTER DATABASE myDB READ ONLY = 1;
```

To enable modification: Default mode

> make myDB to the default mode

```
ALTER DATABASE myDB READ ONLY = 0;
```

## Tables
