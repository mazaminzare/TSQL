create function Warehouse.ToFahrenheit(@Celsius decimal(10,2))
returns decimal(10,2) 
as
begin
declare @Fahrenheit decimal(10,2)
set @Fahrenheit = (@Celsius * 1.8 + 32)

return @Fahrenheit
end


go

create function Warehouse.ToCelsius(@Fahrenheit decimal(10,2))
returns decimal(10,2)
as
begin
declare @Celsius decimal(10,2)
set @Celsius = ((@Fahrenheit - 32)/1.8)

return @Celsius
end