#!/usr/bin/env bash

<<COMMENT

  Summary:
  The following code will install the Microsoft MSSQL drivers
    for Ubuntu 20.04 LTS.
 
  Note: If these drivers are not compatible, FreeTDS is another
    option.

COMMENT


# MSSQL Driver 17
# curl https://packages.microsoft.com/keys/microsoft.asc --insecure | apt-key add -
# curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list --insecure > /etc/apt/sources.list.d/mssql-release.list
# apt-get -y update
# ACCEPT_EULA=Y apt-get -y install msodbcsql17
# ACCEPT_EULA=Y apt-get -y install mssql-tools

echo "Run with sudo"
# MSSQL Driver 18
# MSSQL DRIVERS for BCP: https://learn.microsoft.com/en-us/sql/connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server?view=sql-server-ver16
curl https://packages.microsoft.com/keys/microsoft.asc --insecure | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list --insecure > /etc/apt/sources.list.d/mssql-release.list
apt-get -y update
ACCEPT_EULA=Y apt-get -y install msodbcsql18
ACCEPT_EULA=Y apt-get -y install mssql-tools18
echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc
echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bash_profile
