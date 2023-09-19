---Compare the performance of two teams ('sunrisers hyd' ,'Mumbai indians') for all seasons.


-- select m.team1, m.team2, count(case when m.winner = 'Sunrisers Hyderabad' then 1 else 0 end) as srh_wins,
--        count(case when m.winner = 'Mumbai Indians' then 1 else 0 end) as mi_wins 
--        from matches m
--        where (m.team1 = 'Mumbai Indians' and m.team2 = 'Sunrisers Hyderabad') or (m.team1 = 'Sunrisers Hyderabad' and m.team2 = 'Mumbai Indians')
--        group by m.team1, m.team2;


---venue winner and for year 2015

-- select m.team1, m.team2,m.season, m.venue, m.winner
--        from matches m
--        where (m.season in (2015, 2014)) and ((m.team1 = 'Mumbai Indians' and m.team2 = 'Sunrisers Hyderabad') or (m.team1 = 'Sunrisers Hyderabad' and m.team2 = 'Mumbai Indians'))
--        group by m.team1, m.team2,m.season, m.venue, m.winner;


--- changed count to sum


select m.team1, m.team2, sum(case when m.winner = 'Sunrisers Hyderabad' then 1 else 0 end) as srh_wins,
       sum(case when m.winner = 'Mumbai Indians' then 1 else 0 end) as mi_wins 
       from matches m
       where (m.team1 = 'Mumbai Indians' and m.team2 = 'Sunrisers Hyderabad') or (m.team1 = 'Sunrisers Hyderabad' and m.team2 = 'Mumbai Indians')
       group by m.team1, m.team2;