USE [WideWorldImporters]

select top(100) VehicleTemperatureID,
Temperature as Celsius,
Temperature * 1.8 +32 As Fahrenheit
from Warehouse.VehicleTemperatures


go


select top(100) VehicleTemperatureID,
Temperature as Celsius,
Warehouse.ToFahrenheit(Temperature) As Fahrenheit
from Warehouse.VehicleTemperatures

go

select top(100) VehicleTemperatureID,
Temperature as Celsius,
Warehouse.ToFahrenheit(Temperature) As Fahrenheit,
Warehouse.ToCelsius(Warehouse.ToFahrenheit(Temperature)) As NewCelcius
from Warehouse.VehicleTemperatures
