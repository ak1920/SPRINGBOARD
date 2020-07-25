SELECT Participant_Code, Status, YEAR(Start_Time) AS Year, AVG((TIMESTAMPDIFF(MINUTE,Start_Time,End_Time)/60)/24) AS Average_Outage_Duration_Time_Days
FROM AEMR
  WHERE Status = 'Approved' and YEAR(Start_Time) IN(2016,2017)
GROUP BY Year, Participant_Code
ORDER BY Year, Average_Outage_Duration_Time_Days DESC;


