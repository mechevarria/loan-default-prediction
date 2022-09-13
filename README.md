# Default Loan Prediction

This is an end-to-end project building a classification model to predict loan default using the [Berka dataset](https://relational.fit.cvut.cz/dataset/Financial).

This fork does additional analysis using the [EurekaAI platform](https://www.symphonyai.com/enterprise-ai-platform/). Please contact [SymphonyAI](https://www.symphonyai.com/contact-us/) to get access to both the [SDK](https://platform.ayasdi.com/sdkdocs/) and [Eureka Workbench](https://platform.ayasdi.com/workbench)

## Fork Changes
- Added scripts to install [MySql](https://www.mysql.com/) in a [docker container](https://www.docker.com/) and load using the `mysql` client in the container  

### MySQL Server Setup

- Create data dir and run container with the local script
```bash
./run-mysql.sh
```

- You can shutdown the MySQL server with
```bash
docker stop mysql
```

### Import the data into MySQL

- This script will copy the data files and scripts to the container and import using a local `mysql` client
```bash
./import-data.sh
```

## Setup

* Install [miniconda](https://docs.conda.io/en/latest/miniconda.html) as an environment wrapper
* Create an environment
```bash
conda create --name sai python=3.7
conda activate sai
```
* Install the [EurekaAI SDK](https://platform.ayasdi.com/sdkdocs/)
> The SDK tar.gz installer is not included in this source
```bash
pip install ayasdi-sdk-3.0.0.7.tar.gz
pip install python-dotenv
```

* Setup additional libraries
```bash
conda install ipykernel pandas seaborn scikit-learn mysql-connector-python
```

* Create a file called `.env` in the root directory and put your EurekaAI platform credentials in it along with the Eureka API backend
> Do not check a .env file into source control
```properties
EUREKA_USER="first.last@symphonyai.com"
EUREKA_PASS="my_password_goes_here"
AYASDI_APISERVER="http://platform.ayasdi.com/workbench/"
```

## Links to Resources

- [My full post on Medium about this project](https://medium.com/@zhouxu_ds/loan-default-prediction-an-end-to-end-ml-project-with-real-bank-data-part-1-1405f7aecb9e)

- [Description of the Berka dataset](https://github.com/zhouxu-ds/loan-default-prediction/blob/main/data/data_description.pdf)
- [SQL query to import the data into MySQL database](https://github.com/zhouxu-ds/loan-default-prediction/blob/main/import_data.sql)

## Notebook

- Exploratory Data Analysis (EDA): [html](https://htmlpreview.github.io/?https://github.com/zhouxu-ds/loan-default-prediction/blob/main/html/EDA.html)  and [jupyter notebook](https://github.com/zhouxu-ds/loan-default-prediction/blob/main/notebook/EDA.ipynb).
- Modeling: [html](https://htmlpreview.github.io/?https://github.com/zhouxu-ds/loan-default-prediction/blob/main/html/modeling.html)  and [jupyter notebook](https://github.com/zhouxu-ds/loan-default-prediction/blob/main/notebook/modeling.ipynb).

