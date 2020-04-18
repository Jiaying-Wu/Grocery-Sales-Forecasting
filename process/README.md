
Grocery Sales Forecasting - Data Processing
===========================================

### Data Files

-   [`data_integration.R`](https://github.com/Jiaying-Wu/Grocery-Sales-Forecasting/blob/master/process/data_integration.R): R Script to integrated `train.csv` and `test.csv` with `stores.csv`, `items.csv` and `transactions.csv`.

### Data Integration

The completed data set contain 125+ millions grocery sale records, because the goal is to forecast the future value. Using data far behind the forecasting date might cause the result unreliable. In this case, we only using the sale records after `2017-01-01` for training purpose. After integrated `train` with `items`, `stores` and `oil`, we got 23+ millions records along with 12 features.
