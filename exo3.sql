select * from airplane where Capacity >350;
select NumAP , NameAP from airplane where Localisation = 'Nice';
select NumP,Dep_T from flight;
select * from pilot;
select NameP from pilot where Address='Paris' and Salary > 15000;
select NumAP , NameAP from airplane where Localisation = 'Nice' or Capacity<350;
select * from flight where Dep_T='Nice' and Arr_T='Paris' and Dep_H>18;
select NumP from pilot where NumP NOT IN (select NumP from flight);
select NumF,Dep_T from flight where NumP=100 and Nump=204;

SELECT personne from emprunt where livre = 'Recueil Examens BD';
SELECT personne FROM Emprunt where DateRetourEective IS NULL and personne in (select personne from retard);
SELECT personne FROM emprunt WHERE livre = ALL ( SELECT DISTINCT livre FROM emprunt);
SELECT livre FROM emprunt WHERE personne = ALL ( SELECT DISTINCT personne FROM emprunt);
SELECT personne FROM emprunt WHERE DateRetourEective>DateRetourPrevue 
AND personne IN (SELECT personne FROM retard);
