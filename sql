SELECT c.country
FROM classes c
WHERE c.numGuns >= ALL 
(SELECT c2.numGuns
FROM classes c2);




SELECT DISTINCT c.class
FROM classes c, ships s, outcomes o
WHERE c.class = s.class AND
	  s.name = o.ship AND
      o.ship IN
      (SELECT o2.ship
      FROM outcomes o2
      WHERE o2.result = 'sunk');
      
      
      
      
      
      SELECT s.name 
FROM ships s, classes c
WHERE s.class=c.class AND
c.bore = ANY
 (SELECT c2.bore
FROM classes c2);
