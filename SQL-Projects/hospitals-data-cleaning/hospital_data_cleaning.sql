-- The dataset contains information about several hospitals. This data is stored in a table named hospitals.

-- SECTION 1
-- Some columns in this dataset contain spelling errors where certain letters have been replaced with the letter "x," making them incorrect.
-- For example, "1xx19" is an erroneous version of the correct value "10019." Your task is to select all rows where at least one column contains a value with the letter "x."
SELECT *
    FROM hospitals
    WHERE provider_number LIKE '%x%' OR
          name LIKE '%x%' OR
          address LIKE '%x%' OR
          city LIKE '%x%' OR
          state LIKE '%x%' OR
          zip_code LIKE '%x%' OR
          owner LIKE '%x%';

-- SECTION 2
-- In the second query, you need to remove all rows where the provider_number or zip_code columns contain a value with the letter "x."
-- Note: This permanently modifies the dataset.
DELETE FROM hospitals
    WHERE provider_number LIKE '%x%' OR
          zip_code LIKE '%x%';

-- SECTION 3
-- In the third query, you are tasked with replacing any value in the name column that contains the letter "x" with the phrase "PROBABLY AN ERROR."
-- For example, "southeast alabama medxcal center" should be replaced with "PROBABLY AN ERROR."
UPDATE hospitals
    SET name = 'PROBABLY AN ERROR'
    WHERE name LIKE '%x%'

