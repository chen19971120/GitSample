-- 預約 
use demo2;
CREATE TABLE zoomtype(     -- 房型
   zt_id INT primary key auto_increment,
   zt_name varchar(10),
   zoomtotal int           -- 房間總數
); 
INSERT INTO zoomtype 
  VALUES (NULL,'二人房',10), (NULL,'四人房',6); 

CREATE TABLE zregs (        -- 預約表，一種房型一天一筆資料
  r_id INT primary key auto_increment, 
  zt_id INT, 
  r_date DATE,
  zoomtotal int,            -- 房間總數
  regtotal  int default 0,  -- 已預約數
  FOREIGN KEY(zt_id) REFERENCES zoomtype(zt_id)
);  
 INSERT INTO zregs 
  VALUES (NULL,1,'2021/07/20',10,1),    
         (NULL,1,'2021/07/21',10,2),
         (NULL,2,'2021/07/20',6,2),    
         (NULL,2,'2021/07/21',6,1);  
     
-- DROP EVENT test_event_04;
-- CREATE EVENT test_event_04
-- ON SCHEDULE EVERY 1 DAY
-- STARTS '2021/6/22 22:40:00'
-- ON COMPLETION PRESERVE
-- DO
-- INSERT INTO zregs(zt_id, r_date, zoomtotal)
WITH RECURSIVE dates (v_date) AS
(
   SELECT CURDATE()
   UNION ALL
   SELECT v_date + INTERVAL 1 DAY 
   FROM dates
   WHERE v_date + INTERVAL 1 DAY <= ADDDATE(CURDATE(), INTERVAL 15 DAY)
) 
SELECT z.zt_id, d.v_date, z.zoomtotal 
   FROM dates d 
   JOIN zoomtype z
   LEFT JOIN zregs r on (d.v_date = r.r_date AND z.zt_id = r.zt_id)
   WHERE r.r_date IS NULL;