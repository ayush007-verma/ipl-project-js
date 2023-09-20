

select m.team1, m.team2, sum(case when m.winner = 'Sunrisers Hyderabad' then 1 else 0 end) as srh_wins,
       sum(case when m.winner = 'Mumbai Indians' then 1 else 0 end) as mi_wins 
       from matches m
       where (m.team1 = 'Mumbai Indians' and m.team2 = 'Sunrisers Hyderabad') or (m.team1 = 'Sunrisers Hyderabad' and m.team2 = 'Mumbai Indians')
       group by m.team1, m.team2;