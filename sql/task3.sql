
select 
    d.bowling_team,
    sum(d.extra_runs) as extra_runs
    from
        deliveries d 
            inner join
        matches m
    on 
        d.match_id = m.id
    where
        m.season = 2016
    group by
        d.bowling_team
    order by extra_runs;

