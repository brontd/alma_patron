-- select * from Library.LibraryExport WHERE linkBlue IN ('ddavi7', 'mfme226');


--SELECT
---- REPLACE ( t.record_type , 'p', 'P'),
--REPLACE ( t.record_type , 'PUBLIC', 'Public') as "record_type/@desc"
----lower(t.record_type) as "record_type/@desc"
--, t.record_type as "record_type"
--, t.primary_id
--, t.first_name
--, t.middle_name
--, t.full_name
--, t.user_group
--, t.campus_code 
--, t.preferred_language
--, t.expiry_date
--, t.purge_date
--FROM (
        SELECT
                'PUBLIC' AS "record_type"
                , UKID as primary_id
                , FirstName as first_name 
                , MiddleName as middle_name
                , LastName as last_name  
                , CONCAT(FirstName,' ', MiddleName, ' ', LastName) as full_name
                , '' as user_group      -- ?   <user_group desc="UK Undergraduate Student">Undergrad</user_group>
                , '' as campus_code     -- ?   <campus_code desc="" />
                , '' as preferred_language
                , '' as expiry_date
                , '' as purge_date
                , 'EXTERNAL' as account_type -- ? --> <account_type desc="External">EXTERNAL</account_type>
                , 'SIS' as external_id       -- ? --> <external_id>SIS</external_id>
                , 'Active' as status       -- ? --> <status desc="Active">ACTIVE</status>
                
                , '' AS 'contact_info/addresses/address'
                , CurrStreet1 AS 'contact_info/addresses/address/line1'
                , CurrCity  AS 'contact_info/addresses/address/city'
                , CurrState  AS 'contact_info/addresses/address/state_province'
                , CurrPostalCode  AS 'contact_info/addresses/address/postal_code'
                , CurrCountryCode  AS 'contact_info/addresses/address/country'
                , '' AS 'contact_info/addresses/address/start_date'
                , '' AS 'contact_info/addresses/address/end_date'
                , '' AS 'contact_info/addresses/address/address_types'
                , '' AS 'contact_info/addresses/address/address_type'
--                        <address_types>
--                                <address_type segment_type="School">school</address_type>
--                        </address_types>
                
                , PermStreet1 AS 'contact_infoaddresses/address/permanent_street'
                FROM Library.LibraryExport WHERE linkBlue IN ('mfme226', 'ddavi7') 
--) t
FOR XML PATH ('user');











-- FOR XML AUTO;
-- select top 10 Email from Library.LibraryExport WHERE LastName = 'Duncan' FOR XML AUTO;


-- SELECT  linkblue as primary_id, 
-- FirstName as first_name,
-- MiddleName as middle_name,
-- LastName as last_name,
-- (FirstName + ' ' + Middlename + ' ' + LastName) as full_name
-- FROM Library.LibraryExport WHERE UKID = '12727044' FOR XML PATH('user'), ROOT('users');

-- Email, PatronId, Android, iPhone, appleWatch from Library.LibraryExport WHERE UKID = '12727044' FOR XML PATH('user'), ROOT('users');

-- select top 10 * INTO #temp_test from Library.LibraryExport WHERE UKID = '12727044';
--select *, 'foo' as goo from #temp_test;

-- select top 250 * from Library.LibraryExport WHERE linkblue = 'ddavi7';

-- select * from Library.LibraryExport WHERE linkBlue = 'mfme226';







-- select distinct SLCMStatus from Library.LibraryExport;

-- select top 10 Email "user/Email" from Library.LibraryExport WHERE LastName = 'Duncan' FOR XML PATH;


