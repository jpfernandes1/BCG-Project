# Para criar a tabela client

DROP TABLE IF EXISTS webuser.client;

CREATE TABLE webuser.client (
    client_id VARCHAR(255) PRIMARY KEY,
    channel_sales VARCHAR(255),
    cons_12m INT,
    cons_gas_12m INT,
    cons_last_month INT,
    date_activ VARCHAR(255),
    date_end VARCHAR(255),
    date_modif_prod VARCHAR(255), 
    date_renewal VARCHAR(255),
    forecast_cons_12m FLOAT, 
    forecast_cons_year INT, 
    forecast_discount_energy FLOAT,
    forecast_meter_rent_12m FLOAT,
    forecast_price_energy_off_peak FLOAT,
    forecast_price_energy_peak FLOAT,
    forecast_price_pow_off_peak FLOAT, 
    has_gas VARCHAR(255),
    imp_cons FLOAT, 
    margin_gross_pow_ele FLOAT,
    margin_net_pow_ele FLOAT, 
    nb_prod_act INT,
    net_margin FLOAT, 
    num_years_antig INT,
    origin_up VARCHAR(255),
    pow_max FLOAT, 
    churn INT    
);

# Para criar a tabela Price

DROP TABLE IF EXISTS webuser.price;

CREATE TABLE webuser.price (
    client_id VARCHAR(255),
    price_date DATE,
    price_off_peak_var FLOAT,
    price_peak_var FLOAT,
    price_mid_peak_var FLOAT,
    price_off_peak_fix FLOAT,
    price_peak_fix FLOAT,
    price_mid_peak_fix FLOAT,
    PRIMARY KEY (client_id, price_date),
    FOREIGN KEY (client_id) REFERENCES webuser.client(client_id)
);