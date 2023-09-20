
select 
    m.season,
    count(*) as matches_played
    from 
        matches m 
    group by
        m.season 
    order by m.season;