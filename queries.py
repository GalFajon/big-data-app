select_all = """
    select year, gender.value as "gender", cause.value as "cause", age.value as "age", n
        from deaths
            inner join gender on deaths.gender_id = gender.id
            inner join cause on deaths.cause_id = cause.id
            inner join age on deaths.age_id = age.id
    order by year, gender_id, cause_id, age_id;
"""

group_with_cause = """
    select {0}, SUM(n)
        from deaths
            inner join gender on deaths.gender_id = gender.id
            inner join cause on deaths.cause_id = cause.id
            inner join age on deaths.age_id = age.id
    where cause_id = {1}
    group by {2};
"""

group = """
    select {0}, SUM(n)
        from deaths
            inner join gender on deaths.gender_id = gender.id
            inner join cause on deaths.cause_id = cause.id
            inner join age on deaths.age_id = age.id
    group by {1};
"""

categories = """
    SELECT id,value from cause;
"""