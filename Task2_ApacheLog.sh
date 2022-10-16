#!/bin/bash
echo "Most Frequent IP:"
awk '{print  $1}' /home/serg/Ubuntu/DevOpsEpam/apache_logs.txt | sort | uniq -c  | sort -nr | head -n 1
echo "Most Frequent URL:"
grep "http*" /home/serg/Ubuntu/DevOpsEpam/apache_logs.txt  |awk '{print $15 }' /home/serg/Ubuntu/DevOpsEpam/apache_logs.txt | sort | uniq -c | sort -nr | head -n 1
echo "How many requests per IP:"
awk '{print  $1}' /home/serg/Ubuntu/DevOpsEpam/apache_logs.txt | sort | uniq -c  | sort -nr
echo "Pages with Error 404:" 
grep "error404*" /home/serg/Ubuntu/DevOpsEpam/apache_logs.txt | awk '{print $1,$7, $15}' 
echo "The most requests in this time:"
awk '{print  $4}' /home/serg/Ubuntu/DevOpsEpam/apache_logs.txt | sort | uniq -c  | sort -nr | head -n 1
echo "Searching Bots:"
grep -ow  '\w*Bot\w*'  /home/serg/Ubuntu/DevOpsEpam/apache_logs.txt 

