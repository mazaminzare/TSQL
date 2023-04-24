use [WideWorldImporters]

select * 
from Application.StateProvinces
go

select count(*) as NumberOfStates
from Application.StateProvinces
go

select count(*) as NumberOfStates
from Application.StateProvinces
where SalesTerritory='southwest'
go

select SalesTerritory, StateProvinceName
from Application.StateProvinces
order by SalesTerritory
go

select SalesTerritory, count(StateProvinceName) as NumberOfState
from Application.StateProvinces
Group by SalesTerritory
order by NumberOfState desc
go

select Max(LatestRecordedPopulation) as MaxPopulation,
Min(LatestRecordedPopulation) as MinPopulation,
Avg(LatestRecordedPopulation) as AveragePopulation
from Application.StateProvinces
go


select StateProvinceName, LatestRecordedPopulation
From Application.StateProvinces
where LatestRecordedPopulation = (select Max(LatestRecordedPopulation) from Application.StateProvinces)



select StateProvinceName, LatestRecordedPopulation
From Application.StateProvinces
where LatestRecordedPopulation > 
(select avg(LatestRecordedPopulation) from Application.StateProvinces)

