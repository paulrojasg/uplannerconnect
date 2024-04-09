SELECT t1.id, t2.fullname , t1.itemname FROM mdl_grade_items AS t1 INNER JOIN mdl_grade_categories AS t2 ON t2.id = t1.categoryid INNER JOIN mdl_grade_grades AS t3 ON t3.itemid = t1.id WHERE t1.courseid = 2 AND t1.itemtype NOT IN ('course', 'category') AND  t3.aggregationstatus IN ('used') AND t3.userid = 3 ORDER BY t1.id DESC;