*** Soccer Dataset Practical Queries

--query to retrieve the first 100 rows of the dataset for an overview of structure

SELECT * FROM soccer_analysis 
LIMIT 100;

--query to count the number of players in the dataset
SELECT COUNT(*) AS total_records
FROM soccer_analysis;

--query to retrieve data on the unique teams in the dataset
SELECT DISTINCT team 
FROM soccer_analysis;


--query to count the number of players in each team
SELECT team, COUNT(*) AS total_players
FROM soccer_analysis
GROUP BY team
ORDER BY total_players DESC;

--query to determine top 10 goal scorers
SELECT player_name, goals
FROM soccer_analysis
ORDER BY goals DESC 
LIMIT 10;

--query to identify average salary of players in each team
SELECT player_name,team,average_salary_zar
FROM soccer_analysis;

--query to identify each player's market value

SELECT player_name, team, market_value_zar
FROM soccer_analysis
ORDER BY market_value_zar DESC 
LIMIT 10;

--query to calculate average passing accuracy for each position
SELECT DISTINCT position, ROUND(AVG(passing_accuracy),2) AS ave_passing_accuracy
FROM soccer_analysis
GROUP BY position 
ORDER BY ave_passing_accuracy DESC;

--query to compare shot accuracy to goals

SELECT team, ROUND(AVG(shot_accuracy),2 ) AS avg_shot_accuracy, SUM(goals) AS total_goals
FROM soccer_analysis
GROUP BY team;

--query to compute assists and goals for each team

SELECT team, SUM(goals) AS total_goals, SUM(assists) AS total_assists
FROM soccer_analysis
GROUP BY team
ORDER BY total_goals,total_assists;


-- query to count number of players by marital status
SELECT marital_status, COUNT(*) AS total_per_marital_status
FROM soccer_analysis
GROUP BY marital_status
ORDER BY total_per_marital_status DESC;

--query to count players by nationality
SELECT nationality,COUNT(*) total_players
FROM soccer_analysis
GROUP BY nationality
ORDER BY total_players DESC;

--query to group average salary by nationality

SELECT DISTINCT nationality, ROUND(average_salary_zar,2) AS ave_salary
FROM soccer_analysis
GROUP BY nationality, ave_salary
ORDER BY ave_salary DESC;

--query to compute contract end years total
SELECT contract_end_year, COUNT(*) AS total_players
FROM soccer_analysis
GROUP BY contract_end_year
ORDER BY total_players DESC;

--query to identify players whose contracts end in 2026
SELECT player_name, team, contract_end_year
FROM soccer_analysis
WHERE contract_end_year = 2026;

--query to count number of players/classify players by injury status

SELECT injury_status, COUNT(*) AS total_players
FROM soccer_analysis
GROUP BY injury_status
ORDER BY total_players DESC;
