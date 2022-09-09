# Default Loan Prediction

This is an end-to-end project building a classification model to predict loan default using the [Berka dataset](https://relational.fit.cvut.cz/dataset/Financial).

## Fork Changes
- Setup scripts to install [Mysql](https://www.mysql.com/) in a [docker container](https://www.docker.com/)

### MySQL Server Setup
- Pull container
```bash
docker pull mysql
```

- Create data dir and run container with the local script
```bash
mkdir -p mysql/data
./run-mysql.sh
```

- You can shutdown the MySQL server with
```bash
docker stop mysql
```

### MySQL Client Setup
- Done using [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/about) with an [Ubuntu distro](https://ubuntu.com/)

> You may need to run this [fix](https://github.com/microsoft/WSL/issues/5548#issuecomment-912495487) prior to installing mysql-server

```bash
sudo apt -y install mysql-server
```

- Check that your client can connect
```bash
mysql -uloan -ploanpass --protocol=tcp
```

## Links to Resources

- [My full post on Medium about this project](https://medium.com/@zhouxu_ds/loan-default-prediction-an-end-to-end-ml-project-with-real-bank-data-part-1-1405f7aecb9e)

- [Description of the Berka dataset](https://github.com/zhouxu-ds/loan-default-prediction/blob/main/data/data_description.pdf)
- [SQL query to import the data into MySQL database](https://github.com/zhouxu-ds/loan-default-prediction/blob/main/import_data.sql)

## Notebook

- Exploratory Data Analysis (EDA): [html](https://htmlpreview.github.io/?https://github.com/zhouxu-ds/loan-default-prediction/blob/main/html/EDA.html)  and [jupyter notebook](https://github.com/zhouxu-ds/loan-default-prediction/blob/main/notebook/EDA.ipynb).
- Modeling: [html](https://htmlpreview.github.io/?https://github.com/zhouxu-ds/loan-default-prediction/blob/main/html/modeling.html)  and [jupyter notebook](https://github.com/zhouxu-ds/loan-default-prediction/blob/main/notebook/modeling.ipynb).

