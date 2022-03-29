
####################################################################################################################
# Create Subsets
#
# Year				Default, Years
# Month				Default, Months, Months YTD
# Date				Default, Years, Months, Months YTD
# Account			Default
# Test 1 Measure	Default
# Test 2 Measure	Default
# Summary 1 Measure	Default
# Summary 2 Measure	Default
#
####################################################################################################################

# Year
sDim = 'Year';

sSubset = 'Default';
HierarchySubsetCreate ( sDim, sDim, sSubset );
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'All Year', 1);

sSubset = 'Years';
HierarchySubsetCreate ( sDim, sDim, sSubset );
HierarchySubsetElementInsert( sDim, sDim, sSubset, '2015', 1);
HierarchySubsetElementInsert( sDim, sDim, sSubset, '2016', 1);
HierarchySubsetElementInsert( sDim, sDim, sSubset, '2017', 1);
HierarchySubsetElementInsert( sDim, sDim, sSubset, '2018', 1);
HierarchySubsetElementInsert( sDim, sDim, sSubset, '2019', 1);
HierarchySubsetElementInsert( sDim, sDim, sSubset, '2020', 1);

# Month

sDim = 'Month';

sSubset = 	'Default';
HierarchySubsetCreate ( sDim, sDim, sSubset );
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'All Month', 1);

sSubset = 	'Months';
HierarchySubsetCreate ( sDim, sDim, sSubset );
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'M01', 1);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'M02', 2);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'M03', 3);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'M04', 4);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'M05', 5);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'M06', 6);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'M07', 7);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'M08', 8);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'M09', 9);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'M10', 10);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'M11', 11);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'M12', 12);

sSubset = 	'Months YTD';
HierarchySubsetCreate ( sDim, sDim, sSubset );
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'YTD 01', 1);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'YTD 02', 2);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'YTD 03', 3);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'YTD 04', 4);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'YTD 05', 5);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'YTD 06', 6);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'YTD 07', 7);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'YTD 08', 8);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'YTD 09', 9);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'YTD 10', 10);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'YTD 11', 11);
HierarchySubsetElementInsert( sDim, sDim, sSubset, 'YTD 12', 12);

# Subsets

sDim = 'Date';
sHierarchy = 'Month';

sSubset = 'All Month';
HierarchySubsetCreate( sDim, sHierarchy, sSubset, 0 );
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month', 1);

sSubset = 'Month';
HierarchySubsetCreate( sDim, sHierarchy, sSubset, 0 );

HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 01', 1);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 02', 2);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 03', 3);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 04', 4);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 05', 5);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 06', 6);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 07', 7);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 08', 8);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 09', 9);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 10', 10);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 11', 11);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 12', 12);

sSubset = 'Months YTD';
HierarchySubsetCreate( sDim, sHierarchy, sSubset, 0 );
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 01 YTD', 1);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 02 YTD', 2);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 03 YTD', 3);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 04 YTD', 4);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 05 YTD', 5);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 06 YTD', 6);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 07 YTD', 7);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 08 YTD', 8);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 09 YTD', 9);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 10 YTD', 10);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 11 YTD', 11);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Month 12 YTD', 12);

# Subsets

sHierarchy = 'Year';

sSubset = 'All Year';

HierarchySubsetCreate( sDim, sHierarchy, sSubset, 0 );
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Year', 1);

sSubset = 'Years';

HierarchySubsetCreate( sDim, sHierarchy, sSubset, 0 );
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Year 2015', 1);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Year 2016', 2);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Year 2017', 3);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Year 2018', 4);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Year 2019', 5);
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Year 2020', 6);

# Account

sDim = 'Account';
sHierarchy = 'Account';

sSubset = 'Default';
HierarchySubsetCreate( sDim, sHierarchy, sSubset, 0 );
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'All Account', 1);

# Test 1

sDim = 'Test 1 Measure';
sHierarchy = 'Test 1 Measure';

sSubset = 'Default';
HierarchySubsetCreate( sDim, sHierarchy, sSubset, 0 );
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'Calculated', 1);

# Test 2

sDim = 'Test 2 Measure';
sHierarchy = 'Test 2 Measure';

sSubset = 'Default';
HierarchySubsetCreate( sDim, sHierarchy, sSubset, 0 );
HierarchySubsetElementInsert( sDim, sHierarchy,sSubset, 'Calculated', 1);


####################################################################################################################
# Create Cubes
#
# Test 1		[ Year, Month, Account, Test 1 Measure ]
# Test 2		[ Date, Account, Test 2 Measure]
# Summary 1		[ Test, Summary 1 Measure ]
# Summary 2		[ Test, Summary 2 Measure ]
#
####################################################################################################################

# Test 1

sCube = 'Test 1';

CubeCreate ( sCube, 'Year', 'Month', 'Account', 'Test 1 Measure ');

CubeRuleAppend( sCube, 'SKIPCHECK;', 1 );
CubeRuleAppend( sCube, '', 1 );
CubeRuleAppend( sCube, '[''Calculated''] = N: 1;', 1 );
CubeRuleAppend( sCube, '', 1 );
CubeRuleAppend( sCube, 'FEEDERS;', 1 );
CubeRuleAppend( sCube, '', 0 );
CubeRuleAppend( sCube, '[''Input''] 		=>	[''Calculated''];', 0 );

# Test 2

sCube = 'Test 2';

CubeCreate ( sCube, 'Date', 'Account', 'Test 2 Measure ');

CubeRuleAppend( sCube, 'SKIPCHECK;', 1 );
CubeRuleAppend( sCube, '', 1 );
CubeRuleAppend( sCube, '[''Calculated''] = N: 1;', 1 );
CubeRuleAppend( sCube, '', 1 );
CubeRuleAppend( sCube, 'FEEDERS;', 1 );
CubeRuleAppend( sCube, '', 0 );
CubeRuleAppend( sCube, '[''Input''] 		=>	[''Calculated''];', 0 );

# Logging
LogOutput ( 'INFO', 'Cubes created');

####################################################################################################################
# Populate Cubes
#
# Test 1		[ Year, Month, Account, Test 1 Measure ]
# Test 2		[ Date, Account, Test 2 Measure]
#
####################################################################################################################

# Test 1

sCube = 'Test 1';

nSizeAccount = 		DimSiz('Account');
nSizeYear = 		DimSiz('Year');
nSizeMonth = 		DimSiz('Month');

# initalise counters

nCountAccount = 	1;
nCountYear = 		1;
nCountMonth = 		1;

# Iterate through the dimensions
# Look up the element name and populate with a 1
# This is not a particularly efficient way to pouplate a cube
# But it works for populating test data

WHILE (nCountYear <= nSizeYear);

	WHILE (nCountMonth <= nSizeMonth);

    	WHILE (nCountAccount <=nSizeAccount);

        	# retrieve elements

        	sYear = 	DIMNM ( 'Year', nCountYear );
            sMonth = 	DIMNM ( 'Month', nCountMonth );
            sAccount = 	DIMNM ( 'Account', nCountAccount );

            # load data only at N Levels

            IF ( 	DTYPE ( 'Year', sYear ) @='N' &
            		DTYPE ( 'Month', sMonth ) @='N' &
                    DTYPE ( 'Account', sAccount ) @='N' );

        		CellPutN ( 1, sCube, sYear, sMonth, sAccount, 'Input' );

            ENDIF;


            # increment account

            nCountAccount = nCountAccount + 1 ;

         END;

		# reset account

		nCountAccount = 1;

        # increment month

        nCountMonth = nCountMonth + 1;

    END;

    # reset month and account

    nCountAccount = 1 ;
    nCountMonth = 1;

    # increment year

    nCountYear = nCountYear + 1;

END;

# Logging
LogOutput ( 'INFO', 'Test 1 Populated');

# Test 2

sCube = 'Test 2';

nSizeAccount = 		DimSiz('Account');
nSizeDate = 		DimSiz('Date');

# initalise counters

nCountAccount = 	1;
nCountDate = 		1;

# Iterate through the dimensions
# Look up the element name and populate with a 1
# This is not a particularly efficient way to pouplate a cube
# But it works for populating test data

WHILE (nCountDate <= nSizeDate);

	WHILE (nCountAccount <= nSizeAccount);

        # retrieve elements

        sDate = 	DIMNM ( 'Date', nCountDate );
        sAccount = 	DIMNM ( 'Account', nCountAccount );

        # load data only at N Levels

        IF ( 	DTYPE ( 'Date', sDate ) @='N' &
		        DTYPE ( 'Account', sAccount ) @='N' );

        	CellPutN ( 1, sCube, sDate, sAccount, 'Input' );

        ENDIF;

	    # increment account

        nCountAccount = nCountAccount + 1 ;

      END;

    # reset month and account

    nCountAccount = 1 ;

    nCountDate = nCountDate + 1;

END;

# Logging
LogOutput ( 'INFO', 'Test 2 Populated');


####################################################################################################################
# Save Input Cube Data
#
# Test 1
# Test 2
#
####################################################################################################################

CubeSaveData('Test 1');
CubeSaveData('Test 2');

# Logging
LogOutput ( 'INFO', 'Cube Data committed');



sCube = 'Test 1';
sView = 'Default';

sMDX = 	'SELECT ' |
		'NON EMPTY {TM1SubsetToSet([Month].[Month],"Months YTD","public")} ON 0, ' |
        'NON EMPTY {TM1SubsetToSet([Year].[Year],"Years","public")} ON 1 ' |
        'FROM [Test 1] ' |
        'WHERE ([Account].[Account].[All Account], [Test 1 Measure].[Test 1 Measure].[Calculated])';

ViewCreateByMDX( sCube, sView, sMDX, 0 );

# Test 2
# NOTICE USE OF DATE DIMENSION AND MONTH/YEAR HIERARCHY

sCube = 'Test 2';
sView = 'Default';
sMDX = 	'SELECT ' |
		'NON EMPTY {TM1SubsetToSet([Date].[Month],"Months YTD","public")} ON 0, '|
		'NON EMPTY {TM1SubsetToSet([Date].[Year],"Years","public")} ON 1 ' |
        'FROM [Test 2] ' |
        'WHERE ([Account].[Account].[All Account], [Test 2 Measure].[Test 2 Measure].[Calculated])';

ViewCreateByMDX( sCube, sView, sMDX, 0 );


# Logging
LogOutput ( 'INFO', 'Views created');

####################################################################################################################
# Save All
####################################################################################################################

SaveDataAll();

# Logging
LogOutput ( 'INFO', 'Final Save');
