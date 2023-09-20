
select 
    d.bowler,
    (sum(d.total_runs - d.bye_runs - d.legbye_runs)/ 
        (count(
            case 
                when (d.wide_runs = 0 and d.noball_runs = 0) then 1
                else null end) / 6.0)) as economy_rate 
    from
        deliveries d 
            inner join 
        matches m 
    on 
        d.match_id = m.id 
    where 
        m.season = 2015 
    group by 
        d.bowler 
    order by economy_rate 
    limit 10;

