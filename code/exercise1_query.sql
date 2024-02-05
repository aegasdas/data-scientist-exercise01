-- Combining all tables within the exercise 1 SQL database and creating a new combined table to export.
create table rti_exercise1 as
    -- Only selecting the final variables I want and renaming some to have descriptive variable names.
    select records.age, records.education_num, records.capital_gain, records.capital_loss, records.hours_week, records.over_50k,
           countries.name as country_name, education_levels.name as education_level, marital_statuses.name as marital_status,
           occupations.name as occupation, races.name as race, relationships.name as relationship, sexes.name as sex, workclasses.name as workclass
    from records
    -- Left joining all tables to the records table with their respective id.
    left join countries on records.country_id = countries.id
    left join education_levels on records.education_level_id = education_levels.id
    left join marital_statuses on records.marital_status_id = marital_statuses.id
    left join occupations on records.occupation_id = occupations.id
    left join races on records.race_id = races.id
    left join relationships on records.relationship_id = relationships.id
    left join sexes on records.sex_id = sexes.id
    left join workclasses on records.workclass_id = workclasses.id;