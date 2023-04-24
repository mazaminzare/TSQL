select *
From Application.StateProvinces


select count(*) AS CountOfStates
from Application.StateProvinces


select count(*) AS CountOfStates
From Application.StateProvinces 
where SalesTerritory='SouthWest'


select count(*) AS CountOfStates
From Application.StateProvinces 
where LatestRecordedPopulation>5000000


Select SalesTerritory,StateProvinceName 
From Application.StateProvinces
order by SalesTerritory


select SalesTerritory, Count(StateProvinceName) AS NumberOfStates
from Application.StateProvinces
Group By SalesTerritory
--order by NumberOfStates DESC
order by SalesTerritory



select Max(LatestRecordedPopulation) AS MaxPopulation,
Min(LatestRecordedPopulation) AS MinPopulation,
AVG(LatestRecordedPopulation) AS AvgPopulation
From Application.StateProvinces

Select StateProvinceName, LatestRecordedPopulation 
From Application.StateProvinces
where LatestRecordedPopulation = (Select Max(LatestRecordedPopulation) from Application.StateProvinces)


Select StateProvinceName, LatestRecordedPopulation 
From Application.StateProvinces
where LatestRecordedPopulation > 
(Select Avg(LatestRecordedPopulation) from Application.StateProvinces)