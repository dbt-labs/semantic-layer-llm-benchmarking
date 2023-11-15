select
    PolicyNo,
    ClaimNumber,
    Premium,
    InsuredLocation,
    Loss_Ratio,
    Nearest_Firestation_miles,
    Number_of_Firefighters,
    Fireplace,
    Year_Built
from dbt_cdw_benchmark__seed.fireclaim