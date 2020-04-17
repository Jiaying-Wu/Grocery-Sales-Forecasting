
Grocery Sales Forecasting
=========================

This repo is the work summary of Corporación Favorita Grocery Sales Forecasting.

### Report

R markdown under `report` folder provide data insight of Corporación Favorita Grocery Sales data.

Further report detail under [report](https://github.com/Jiaying-Wu/Grocery-Sales-Forecasting/tree/master/report) folder.

### Modeling

Under `model` folder, R Scripts to process grocery sales data and models to forecast the day-to-day grocery sale of 200,000+ products in 54 supermarkets.

Further modeling detail under [model](https://github.com/Jiaying-Wu/Grocery-Sales-Forecasting/tree/master/model) folder.

### Data Source

Data source from Corporación Favorita, access the data from this competition [Corporación Favorita Grocery Sales Forecasting](https://www.kaggle.com/c/favorita-grocery-sales-forecasting/data) in Kaggle.

That is 7 data files:

-   `train.csv`: Training data, includes the target `unit_sales` by `date`, `store_nbr`, and `item_nbr` and a unique `id` to label rows, `onpromotion` column tells whether that `item_nbr` was on promotion for a specified `date` and `store_nbr`.

-   `test.csv`: Test data, with the `date`, `store_nbr`, `item_nbr` combinations that are to be predicted, along with the `onpromotion` information.

-   `stores.csv`: Store metadata, including `city`, `state`, `type` and `cluster`(grouping of similar stores).

-   `items.csv`: Item metadata, including `family`, `class`, and `perishable`(have a score weight of `1.25`; otherwise, the weight is `1.0`).

-   `transactions.csv`: The count of sales transactions for each `date`, `store_nbr` combination. Only included for the training data timeframe.

-   `oil.csv`: Daily oil price, includes values during both the train and test data timeframe.

-   `holidays_events.csv`: Holidays and Events, with metadata.
