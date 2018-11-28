SELECT teams.conference AS conference,
       players.year,
       COUNT(1) AS players
  FROM benn.college_football_players players
  JOIN benn.college_football_teams teams
    ON teams.school_name = players.school_name
 GROUP BY 1,2
 ORDER BY 1,2