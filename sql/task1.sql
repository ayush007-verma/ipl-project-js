--Number of matches played per year of all the years in IPL.

select 
    m.season,
    count(*) as matches_played
    from 
        matches m 
    group by
        m.season 
    order by m.season;