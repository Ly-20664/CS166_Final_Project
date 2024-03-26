-- Users table
CREATE INDEX index_users_name ON Users(name);
CREATE INDEX index_users_type ON Users(type);

-- Store table
CREATE INDEX index_store_managerID ON Store(managerID);
CREATE INDEX index_store_latitude_longitude ON Store(latitude, longitude);

-- Product table
CREATE INDEX index_product_name ON Product(productName);
CREATE INDEX index_product_pricePerUnit ON Product(pricePerUnit);

-- Warehouse table
CREATE INDEX index_warehouse_area ON Warehouse(area);

-- Orders table
CREATE INDEX index_orders_customerID ON Orders(customerID);
CREATE INDEX index_orders_storeID_productName ON Orders(storeID, productName);
CREATE INDEX index_orders_orderTime ON Orders(orderTime);

-- ProductSupplyRequests table
CREATE INDEX index_productsupplyrequests_managerID ON ProductSupplyRequests(managerID);
CREATE INDEX index_productsupplyrequests_warehouseID_storeID ON ProductSupplyRequests(warehouseID, storeID);

-- ProductUpdates table
CREATE INDEX index_productupdates_managerID ON ProductUpdates(managerID);
CREATE INDEX index_productupdates_updatedOn ON ProductUpdates(updatedOn);