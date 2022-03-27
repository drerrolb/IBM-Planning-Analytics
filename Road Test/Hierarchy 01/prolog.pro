
#===================================================================================================================
#
# This code generates the dimensions and cubes described in the video:  Road Test: Hierarchy 01
#
# Code is provided on an 'as-is' basis and there is no warranty whatsoever, either express or implied
# Code is distributed under creative commons license CC-BY: commercial usage allowed, attribution required
#
# Please only run this code in a non-production environment
#
# The prolog section clears existing objects and rebuilds the dimensions
# The epilog sections creates the cubes and populates the data
#
#===================================================================================================================

####################################################################################################################
# DESTROY EXISTING OBJECTS
# Year
# Month
# Date
# Account
# Test
# Summary 1 Measure
# Summary 2 Measure
####################################################################################################################

# Destroy Cubes

CubeDestroy('Test 1');
CubeDestroy('Test 2');
CubeDestroy('Summary 1');
CubeDestroy('Summary 2');

# Destroy Dimensions (and hierarchies)

DimensionDestroy('Year');
DimensionDestroy('Month');
DimensionDestroy('Date');
DimensionDestroy('Account');
DimensionDestroy('Test');
DimensionDestroy('Test 1 Measure');
DimensionDestroy('Test 2 Measure');
DimensionDestroy('Summary 1 Measure');
DimensionDestroy('Summary 2 Measure');

####################################################################################################################
# CREATE DIMENSIONS
# Year
# Month
# Date
# Account
# Test 1 Measure
# Test 2 Measure
# Summary 1 Measure
# Summary 2 Measure
####################################################################################################################

####################################################################################################################
# Year
####################################################################################################################

# Constants

sDim = 'Year';
sConsol = 'All ' | sDim;

# Create dimension

DimensionCreate(sDim);

# Create dimension attributes

AttrInsert	(sDim, '', 'Code', 'A');
AttrInsert	(sDim, 'Code', 'CAPTION', 'A');
AttrInsert	(sDim, 'CAPTION', 'Description', 'S');

# Create consolidation

DimensionElementInsert( sDim, '', sConsol, 'C' );

# Dimension Sort

DimensionSortOrder ( sDim, 'ByName', 'Ascending', 'ByHierarchy', 'Ascending' );

# Create Year Elements

DimensionElementComponentAdd( sDim, sConsol, '2015', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020', 1 );

# Create subsets

sSubset = 	'All N Level';
sMDX = 		'{TM1SORT( {TM1FILTERBYLEVEL( {TM1SUBSETALL( [' | sDim | '])}, 0)}, ASC)}';

# Create subset in default dimension hierarchy

HierarchySubsetCreate ( sDim, sDim, sSubset );
HierarchySubsetMDXSet ( sDim, sDim, sSubset, sMDX );
#HierarchySubsetMDXSet ( sDim, sDim, sSubset, '' );

####################################################################################################################
# Month
####################################################################################################################


sDim = 'Month';
sConsol = 'All ' | sDim;

# Create dimension

DimensionCreate(sDim);

# Create dimension attributes

AttrInsert(sDim, '', 'Code', 'A');
AttrInsert(sDim, 'Code', 'CAPTION', 'A');
AttrInsert(sDim, 'CAPTION', 'Description', 'S');

# Create consolidation

DimensionElementInsert( sDim, '', sConsol, 'C' );

# Dimension Sort

DimensionSortOrder ( sDim, 'ByName', 'Ascending', 'ByHierarchy', 'Ascending' );

# Element Create

DimensionElementComponentAdd( sDim, sConsol, 'M01', 1 );
DimensionElementComponentAdd( sDim, sConsol, 'M02', 1 );
DimensionElementComponentAdd( sDim, sConsol, 'M03', 1 );
DimensionElementComponentAdd( sDim, sConsol, 'M04', 1 );
DimensionElementComponentAdd( sDim, sConsol, 'M05', 1 );
DimensionElementComponentAdd( sDim, sConsol, 'M06', 1 );
DimensionElementComponentAdd( sDim, sConsol, 'M07', 1 );
DimensionElementComponentAdd( sDim, sConsol, 'M08', 1 );
DimensionElementComponentAdd( sDim, sConsol, 'M09', 1 );
DimensionElementComponentAdd( sDim, sConsol, 'M10', 1 );
DimensionElementComponentAdd( sDim, sConsol, 'M11', 1 );
DimensionElementComponentAdd( sDim, sConsol, 'M12', 1 );

# Create subsets

sSubset = 	'All N Level';
sMDX = 		'{TM1SORT( {TM1FILTERBYLEVEL( {TM1SUBSETALL( [' | sDim | '])}, 0)}, ASC)}';

# Create subset in default dimension hierarchy

HierarchySubsetCreate ( sDim, sDim, sSubset );
HierarchySubsetMDXSet ( sDim, sDim, sSubset, sMDX );
#HierarchySubsetMDXSet ( sDim, sDim, sSubset, '' );

####################################################################################################################
# Date
####################################################################################################################


sDim = 'Date';
sConsol = 'All ' | sDim;

# Create dimension

DimensionCreate(sDim);

# Create dimension attributes

AttrInsert(sDim, '', 'Month', 'S');
AttrInsert(sDim, 'Month', 'Year', 'S');

# Create consolidation

DimensionElementInsert( sDim, '', sConsol, 'C' );

# Dimension Sort

DimensionSortOrder ( sDim, 'ByName', 'Ascending', 'ByHierarchy', 'Ascending' );

# Element Create

DimensionElementComponentAdd( sDim, sConsol, '2015M01D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2015M02D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2015M03D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2015M04D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2015M05D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2015M06D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2015M07D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2015M08D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2015M09D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2015M10D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2015M11D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2015M12D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016M01D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016M02D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016M03D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016M04D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016M05D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016M06D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016M07D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016M08D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016M09D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016M10D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016M11D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2016M12D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017M01D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017M02D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017M03D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017M04D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017M05D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017M06D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017M07D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017M08D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017M09D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017M10D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017M11D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2017M12D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018M01D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018M02D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018M03D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018M04D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018M05D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018M06D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018M07D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018M08D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018M09D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018M10D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018M11D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2018M12D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019M01D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019M02D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019M03D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019M04D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019M05D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019M06D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019M07D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019M08D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019M09D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019M10D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019M11D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2019M12D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020M01D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020M02D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020M03D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020M04D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020M05D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020M06D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020M07D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020M08D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020M09D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020M10D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020M11D00', 1 );
DimensionElementComponentAdd( sDim, sConsol, '2020M12D00', 1 );

####################################################################################################################
# Account
####################################################################################################################

sDim = 'Account';
sConsol = 'All ' | sDim;

# Create dimension

DimensionCreate(sDim);

# Create dimension attributes

AttrInsert(sDim, '', 'Code', 'A');
AttrInsert(sDim, 'Code', 'CAPTION', 'A');
AttrInsert(sDim, 'CAPTION', 'Description', 'S');

# Create consolidation

DimensionElementInsert( sDim, '', sConsol, 'C' );

# Dimension Sort

DimensionSortOrder ( sDim, 'ByName', 'Ascending', 'ByHierarchy', 'Ascending' );

# Element Create

nCounter = 0;
WHILE (nCounter < 50000);

	# loop through 50,000 times to create a set of elements

    nCounter = nCounter+1;
    sCounter = NumbertoStringEx(nCounter, '00000', '', '' );

    DimensionElementComponentAdd( sDim, sConsol, sCounter, 1 );

END;

# Create subsets

sSubset = 	'All N Level';
sMDX = 		'{TM1SORT( {TM1FILTERBYLEVEL( {TM1SUBSETALL( [' | sDim | '])}, 0)}, ASC)}';

# Create subset in default dimension hierarchy

HierarchySubsetCreate ( sDim, sDim, sSubset );
HierarchySubsetMDXSet ( sDim, sDim, sSubset, sMDX );
#HierarchySubsetMDXSet ( sDim, sDim, sSubset, '' );

####################################################################################################################
# Test Measure
####################################################################################################################

sDim = 'Test';

# Create dimension

DimensionCreate(sDim);

# Create dimension attributes

AttrInsert(sDim, '', 'Code', 'A');
AttrInsert(sDim, 'Code', 'CAPTION', 'A');
AttrInsert(sDim, 'CAPTION', 'Description', 'S');

# Dimension Sort

DimensionSortOrder ( sDim, 'ByName', 'Ascending', 'ByHierarchy', 'Ascending' );

# Element Create

DimensionElementInsert( sDim, '', 'Test 1', 'N' );
DimensionElementInsert( sDim, '', 'Test 2', 'N' );

####################################################################################################################
# Test 1 Measure
####################################################################################################################

sDim = 'Test 1 Measure';

# Create dimension

DimensionCreate(sDim);

# Element Create

DimensionElementInsert( sDim, '', 'Input', 'N' );
DimensionElementInsert( sDim, '', 'Calculated', 'N' );

####################################################################################################################
# Test 2 Measure
####################################################################################################################

sDim = 'Test 2 Measure';

# Create dimension

DimensionCreate(sDim);

# Element Create

DimensionElementInsert( sDim, '', 'Input', 'N' );
DimensionElementInsert( sDim, '', 'Calculated', 'N' );

####################################################################################################################
# Summary 1 Measure
####################################################################################################################

sDim = 'Summary 1 Measure';

# Create dimension

DimensionCreate(sDim);

# Create dimension attributes

AttrInsert(sDim, '', 'Code', 'A');
AttrInsert(sDim, 'Code', 'CAPTION', 'A');
AttrInsert(sDim, 'CAPTION', 'Description', 'S');

# Dimension Sort

DimensionSortOrder ( sDim, 'ByName', 'Ascending', 'ByHierarchy', 'Ascending' );

# Element Create

DimensionElementInsert( sDim, '', 'Value', 'N' );

####################################################################################################################
# Summary 2 Measure
####################################################################################################################

sDim = 'Summary 2 Measure';

# Create dimension

DimensionCreate(sDim);

# Create dimension attributes

AttrInsert(sDim, '', 'Code', 'A');
AttrInsert(sDim, 'Code', 'CAPTION', 'A');
AttrInsert(sDim, 'CAPTION', 'Description', 'S');

# Dimension Sort

DimensionSortOrder ( sDim, 'ByName', 'Ascending', 'ByHierarchy', 'Ascending' );

# Element Create

DimensionElementInsert( sDim, '', 'Value', 'N' );
