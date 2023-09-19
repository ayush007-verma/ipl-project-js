-- Number of matches won of all teams over all the years of IPL.

select 
    m.winner,
    count(*) as matches_won
    from
        matches m
    where
        winner is Not Null 
    group by
        m.winner 
    order by matches_won;
