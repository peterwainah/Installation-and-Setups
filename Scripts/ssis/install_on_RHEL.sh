#!/bin/bash
## 1. Download the SQL Server Red Hat repository configuration file.
sudo curl -o /etc/yum.repos.d/mssql-server.repo https://packages.microsoft.com/config/rhel/7/mssql-server-2019.repo

## 2. Run the following command to install SQL Server Integration Services
sudo yum install -y mssql-server-is

## 3.After installation, run ssis-conf
### The below line depends to run on python 2.7
sudo /opt/ssis/bin/ssis-conf setup

## 4.After the configuration is done, set the PATH environment variable

echo "export PATH=/opt/ssis/bin:$PATH" | sudo tee -a ~/.bash_history

## 5.Refresh bash profile
source ~/.bash_history


