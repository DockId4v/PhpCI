# PHPCI Container #

This container ships a php apache webserver with PHPCI cloned inside.

On first run it will install PHPCI and run the deamon.

## Environment Variables ##

You can customize installation values with environment variables

### PHPCI_ADMIN_LOGIN ###
This is the Admin Login that will be created at first run
### PHPCI_ADMIN_PASSWORD ###
This is the password of the admin account
### PHPCI_ADMIN_MAIL ###
This is the email of the admin account (this must be a valid email)
### PHPCI_URL ###
This is the url (prefixed with http://) that will be used to access PHPCI
### PHPCI_DB_HOST ###
This is the hostname of the MySQL Server/Container.
### PHPCI_DB_USER ###
This is the Database username to use to access the database.
### PHPCI_DB_PASSWORD ###
This is the database account password.
### PHPCI_DB_NAME ###
This is the phpci database name where data will be stored