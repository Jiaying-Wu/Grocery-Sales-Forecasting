# library
library(data.table)
library(magrittr)

# import data, only using train data in 2017
# train, first `id` 101688779, last `id` 125497039
train <- fread("data/train.csv", skip = 101688780, header = FALSE, nThread = parallel::detectCores()) %>% 
  setnames(c("id", "date", "store_nbr", "item_nbr", "unit_sales", "onpromotion"))
# first, first `id` 125497040, last `id` 128867503
test <- fread("data/test.csv", nThread = parallel::detectCores())
# can merge by `store_nbr`
stores <- fread("data/stores.csv", nThread = parallel::detectCores())
# can merge by `item_nbr`
items <- fread("data/items.csv", nThread = parallel::detectCores())
# can merge by `date`
oil <- fread("data/oil.csv", nThread = parallel::detectCores())

# Data Integration
# bind row in train and test
test <- test[, unit_sales:=NA]
all_data <- rbind(train, test)
remove(train, test)
# merge with items
all_data <- merge(x = all_data, y = items, by = "item_nbr", all.x = TRUE)
remove(items)
# merge with stores
all_data <- merge(x = all_data, y = stores, by = "store_nbr", all.x = TRUE)
remove(stores)
# merge with oil
all_data <- merge(x= all_data, y = oil, by = "date", all.x = TRUE)
remove(oil)

# Split train and test from all_data
train <- all_data[id < 125497040,]
train <- all_data[unit_sales > 0,]
test <- all_data[id > 125497039,]
remove(all_data)
test <- test[, unit_sales:=NULL]

# outport train and test
fwrite(train, "data/train_integ_2017.csv")
fwrite(test, "data/test_integ.csv")

