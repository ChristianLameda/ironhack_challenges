SELECT player_name, games,
CAST(ROUND(CAST(hits AS decimal) / at_bats,3) AS TEXT) AS batting_average
FROM yankees
WHERE at_bats >= 100
ORDER BY batting_average DESC