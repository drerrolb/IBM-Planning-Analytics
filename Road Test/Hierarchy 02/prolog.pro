

#===================================================================================================================
#
# This code generates the dimensions and cubes described in the video:  Road Test: Hierarchy 02
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
####################################################################################################################

# Destroy Cubes

CubeDestroy('Test 1');
CubeDestroy('Test 2');


# Destroy Dimensions (and hierarchies)

DimensionDestroy('Year');
DimensionDestroy('Month');
DimensionDestroy('Date');
DimensionDestroy('Account');
DimensionDestroy('Test 1 Measure');
DimensionDestroy('Test 2 Measure');


# Logging
LogOutput ( 'INFO', 'Completed destroying objects');

####################################################################################################################
# CREATE DIMENSIONS
# Year
# Month
# Date
# Account
# Test 1 Measure
# Test 2 Measure
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

# Logging
LogOutput ( 'INFO', sDim | ' created ');


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

# Add a Year to Date rollup

DimensionElementInsert( sDim, '', 'YTD 12', 'C' );
DimensionElementInsert( sDim, '', 'YTD 11', 'C' );
DimensionElementInsert( sDim, '', 'YTD 10', 'C' );
DimensionElementInsert( sDim, '', 'YTD 09', 'C' );
DimensionElementInsert( sDim, '', 'YTD 08', 'C' );
DimensionElementInsert( sDim, '', 'YTD 07', 'C' );
DimensionElementInsert( sDim, '', 'YTD 06', 'C' );
DimensionElementInsert( sDim, '', 'YTD 05', 'C' );
DimensionElementInsert( sDim, '', 'YTD 04', 'C' );
DimensionElementInsert( sDim, '', 'YTD 03', 'C' );
DimensionElementInsert( sDim, '', 'YTD 02', 'C' );
DimensionElementInsert( sDim, '', 'YTD 01', 'C' );

DimensionElementComponentAdd( sDim, 'YTD 01', 'M01', 1 );

DimensionElementComponentAdd( sDim, 'YTD 02', 'M01', 1 );
DimensionElementComponentAdd( sDim, 'YTD 02', 'M02', 1 );

DimensionElementComponentAdd( sDim, 'YTD 03', 'M01', 1 );
DimensionElementComponentAdd( sDim, 'YTD 03', 'M02', 1 );
DimensionElementComponentAdd( sDim, 'YTD 03', 'M03', 1 );

DimensionElementComponentAdd( sDim, 'YTD 04', 'M01', 1 );
DimensionElementComponentAdd( sDim, 'YTD 04', 'M02', 1 );
DimensionElementComponentAdd( sDim, 'YTD 04', 'M03', 1 );
DimensionElementComponentAdd( sDim, 'YTD 04', 'M04', 1 );

DimensionElementComponentAdd( sDim, 'YTD 05', 'M01', 1 );
DimensionElementComponentAdd( sDim, 'YTD 05', 'M02', 1 );
DimensionElementComponentAdd( sDim, 'YTD 05', 'M03', 1 );
DimensionElementComponentAdd( sDim, 'YTD 05', 'M04', 1 );
DimensionElementComponentAdd( sDim, 'YTD 05', 'M05', 1 );

DimensionElementComponentAdd( sDim, 'YTD 06', 'M01', 1 );
DimensionElementComponentAdd( sDim, 'YTD 06', 'M02', 1 );
DimensionElementComponentAdd( sDim, 'YTD 06', 'M03', 1 );
DimensionElementComponentAdd( sDim, 'YTD 06', 'M04', 1 );
DimensionElementComponentAdd( sDim, 'YTD 06', 'M05', 1 );
DimensionElementComponentAdd( sDim, 'YTD 06', 'M06', 1 );

DimensionElementComponentAdd( sDim, 'YTD 07', 'M01', 1 );
DimensionElementComponentAdd( sDim, 'YTD 07', 'M02', 1 );
DimensionElementComponentAdd( sDim, 'YTD 07', 'M03', 1 );
DimensionElementComponentAdd( sDim, 'YTD 07', 'M04', 1 );
DimensionElementComponentAdd( sDim, 'YTD 07', 'M05', 1 );
DimensionElementComponentAdd( sDim, 'YTD 07', 'M06', 1 );
DimensionElementComponentAdd( sDim, 'YTD 07', 'M07', 1 );

DimensionElementComponentAdd( sDim, 'YTD 08', 'M01', 1 );
DimensionElementComponentAdd( sDim, 'YTD 08', 'M02', 1 );
DimensionElementComponentAdd( sDim, 'YTD 08', 'M03', 1 );
DimensionElementComponentAdd( sDim, 'YTD 08', 'M04', 1 );
DimensionElementComponentAdd( sDim, 'YTD 08', 'M05', 1 );
DimensionElementComponentAdd( sDim, 'YTD 08', 'M06', 1 );
DimensionElementComponentAdd( sDim, 'YTD 08', 'M07', 1 );
DimensionElementComponentAdd( sDim, 'YTD 08', 'M08', 1 );

DimensionElementComponentAdd( sDim, 'YTD 09', 'M01', 1 );
DimensionElementComponentAdd( sDim, 'YTD 09', 'M02', 1 );
DimensionElementComponentAdd( sDim, 'YTD 09', 'M03', 1 );
DimensionElementComponentAdd( sDim, 'YTD 09', 'M04', 1 );
DimensionElementComponentAdd( sDim, 'YTD 09', 'M05', 1 );
DimensionElementComponentAdd( sDim, 'YTD 09', 'M06', 1 );
DimensionElementComponentAdd( sDim, 'YTD 09', 'M07', 1 );
DimensionElementComponentAdd( sDim, 'YTD 09', 'M08', 1 );
DimensionElementComponentAdd( sDim, 'YTD 09', 'M09', 1 );

DimensionElementComponentAdd( sDim, 'YTD 10', 'M01', 1 );
DimensionElementComponentAdd( sDim, 'YTD 10', 'M02', 1 );
DimensionElementComponentAdd( sDim, 'YTD 10', 'M03', 1 );
DimensionElementComponentAdd( sDim, 'YTD 10', 'M04', 1 );
DimensionElementComponentAdd( sDim, 'YTD 10', 'M05', 1 );
DimensionElementComponentAdd( sDim, 'YTD 10', 'M06', 1 );
DimensionElementComponentAdd( sDim, 'YTD 10', 'M07', 1 );
DimensionElementComponentAdd( sDim, 'YTD 10', 'M08', 1 );
DimensionElementComponentAdd( sDim, 'YTD 10', 'M09', 1 );
DimensionElementComponentAdd( sDim, 'YTD 10', 'M10', 1 );

DimensionElementComponentAdd( sDim, 'YTD 11', 'M11', 1 );
DimensionElementComponentAdd( sDim, 'YTD 11', 'M02', 1 );
DimensionElementComponentAdd( sDim, 'YTD 11', 'M03', 1 );
DimensionElementComponentAdd( sDim, 'YTD 11', 'M04', 1 );
DimensionElementComponentAdd( sDim, 'YTD 11', 'M05', 1 );
DimensionElementComponentAdd( sDim, 'YTD 11', 'M06', 1 );
DimensionElementComponentAdd( sDim, 'YTD 11', 'M07', 1 );
DimensionElementComponentAdd( sDim, 'YTD 11', 'M08', 1 );
DimensionElementComponentAdd( sDim, 'YTD 11', 'M09', 1 );
DimensionElementComponentAdd( sDim, 'YTD 11', 'M10', 1 );
DimensionElementComponentAdd( sDim, 'YTD 11', 'M11', 1 );

DimensionElementComponentAdd( sDim, 'YTD 12', 'M01', 1 );
DimensionElementComponentAdd( sDim, 'YTD 12', 'M02', 1 );
DimensionElementComponentAdd( sDim, 'YTD 12', 'M03', 1 );
DimensionElementComponentAdd( sDim, 'YTD 12', 'M04', 1 );
DimensionElementComponentAdd( sDim, 'YTD 12', 'M05', 1 );
DimensionElementComponentAdd( sDim, 'YTD 12', 'M06', 1 );
DimensionElementComponentAdd( sDim, 'YTD 12', 'M07', 1 );
DimensionElementComponentAdd( sDim, 'YTD 12', 'M08', 1 );
DimensionElementComponentAdd( sDim, 'YTD 12', 'M09', 1 );
DimensionElementComponentAdd( sDim, 'YTD 12', 'M10', 1 );
DimensionElementComponentAdd( sDim, 'YTD 12', 'M11', 1 );
DimensionElementComponentAdd( sDim, 'YTD 12', 'M12', 1 );

# Logging
LogOutput ( 'INFO', sDim | ' created ');


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

# Month Hierarchy

sHierarchy = 'Month';

HierarchyCreate ( sDim, sHierarchy );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2015M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2015M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2015M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2015M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2016M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2016M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2016M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2016M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2017M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2017M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2017M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2017M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2018M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2018M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2018M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2018M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2019M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2019M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2019M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2019M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2020M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2020M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2020M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2020M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month', '2020M12D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 01', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 01', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 01', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 01', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 01', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 01', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 01', '2020M01D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 02', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02', '2020M02D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 03', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03', '2020M03D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 04', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04', '2020M04D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 05', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05', '2020M05D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 06', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06', '2020M06D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 07', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07', '2020M07D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 08', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08', '2020M08D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 09', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09', '2015M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09', '2016M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09', '2017M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09', '2018M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09', '2019M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09', '2020M09D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 10', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10', '2015M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10', '2016M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10', '2017M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10', '2018M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10', '2019M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10', '2020M10D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 11', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11', '2015M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11', '2016M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11', '2017M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11', '2018M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11', '2019M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11', '2020M11D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 12', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12', '2015M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12', '2016M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12', '2017M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12', '2018M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12', '2019M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12', '2020M12D00', 1 );

# Month Cumulative (YTD)

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 01 YTD', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 01 YTD', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 01 YTD', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 01 YTD', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 01 YTD', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 01 YTD', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 01 YTD', '2020M01D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 02 YTD', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02 YTD', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02 YTD', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02 YTD', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02 YTD', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02 YTD', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02 YTD', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02 YTD', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02 YTD', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02 YTD', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02 YTD', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02 YTD', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 02 YTD', '2020M02D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 03 YTD', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 03 YTD', '2020M03D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 04 YTD', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 04 YTD', '2020M04D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 05 YTD', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 05 YTD', '2020M05D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 06 YTD', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 06 YTD', '2020M06D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 07 YTD', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 07 YTD', '2020M07D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 08 YTD', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 08 YTD', '2020M08D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 09 YTD', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2020M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2015M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2016M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2017M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2018M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2019M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 09 YTD', '2020M09D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 10 YTD', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2020M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2015M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2016M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2017M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2018M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2019M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2020M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2015M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2016M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2017M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2018M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2019M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 10 YTD', '2020M10D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 11 YTD', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2020M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2015M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2016M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2017M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2018M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2019M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2020M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2015M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2016M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2017M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2018M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2019M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2020M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2015M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2016M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2017M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2018M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2019M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 11 YTD', '2020M11D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Month 12 YTD', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2020M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2015M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2016M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2017M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2018M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2019M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2020M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2015M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2016M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2017M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2018M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2019M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2020M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2015M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2016M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2017M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2018M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2019M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2020M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2015M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2016M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2017M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2018M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2019M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Month 12 YTD', '2020M12D00', 1 );


# YTD Hierarchy

sHierarchy = 'Year-to-date';

HierarchyCreate ( sDim, sHierarchy );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2015-01', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-01', '2015M01D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2015-02', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-01', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-02', '2015M02D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2015-03', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-03', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-03', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-03', '2015M03D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2015-04', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-04', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-04', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-04', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-04', '2015M04D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2015-05', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-05', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-05', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-05', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-05', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-05', '2015M05D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2015-06', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-06', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-06', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-06', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-06', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-06', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-06', '2015M06D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2015-07', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-07', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-07', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-07', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-07', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-07', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-07', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-07', '2015M07D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2015-08', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-08', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-08', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-08', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-08', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-08', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-08', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-08', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-08', '2015M08D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2015-09', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-09', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-09', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-09', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-09', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-09', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-09', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-09', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-09', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-09', '2015M09D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2015-10', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-10', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-10', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-10', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-10', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-10', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-10', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-10', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-10', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-10', '2015M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-10', '2015M10D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2015-11', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-11', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-11', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-11', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-11', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-11', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-11', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-11', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-11', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-11', '2015M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-11', '2015M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-11', '2015M11D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2015-12', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-12', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-12', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-12', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-12', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-12', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-12', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-12', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-12', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-12', '2015M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-12', '2015M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-12', '2015M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2015-12', '2015M12D00', 1 );

# 2016

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2016-01', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-01', '2016M01D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2016-02', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-01', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-02', '2016M02D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2016-03', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-03', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-03', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-03', '2016M03D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2016-04', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-04', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-04', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-04', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-04', '2016M04D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2016-05', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-05', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-05', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-05', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-05', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-05', '2016M05D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2016-06', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-06', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-06', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-06', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-06', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-06', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-06', '2016M06D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2016-07', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-07', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-07', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-07', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-07', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-07', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-07', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-07', '2016M07D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2016-08', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-08', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-08', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-08', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-08', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-08', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-08', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-08', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-08', '2016M08D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2016-09', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-09', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-09', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-09', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-09', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-09', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-09', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-09', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-09', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-09', '2016M09D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2016-10', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-10', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-10', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-10', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-10', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-10', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-10', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-10', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-10', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-10', '2016M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-10', '2016M10D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2016-11', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-11', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-11', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-11', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-11', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-11', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-11', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-11', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-11', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-11', '2016M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-11', '2016M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-11', '2016M11D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2016-12', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-12', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-12', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-12', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-12', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-12', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-12', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-12', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-12', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-12', '2016M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-12', '2016M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-12', '2016M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2016-12', '2016M12D00', 1 );

# 2017

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2017-01', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-01', '2017M01D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2017-02', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-01', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-02', '2017M02D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2017-03', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-03', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-03', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-03', '2017M03D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2017-04', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-04', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-04', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-04', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-04', '2017M04D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2017-05', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-05', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-05', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-05', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-05', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-05', '2017M05D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2017-06', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-06', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-06', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-06', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-06', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-06', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-06', '2017M06D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2017-07', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-07', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-07', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-07', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-07', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-07', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-07', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-07', '2017M07D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2017-08', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-08', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-08', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-08', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-08', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-08', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-08', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-08', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-08', '2017M08D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2017-09', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-09', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-09', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-09', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-09', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-09', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-09', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-09', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-09', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-09', '2017M09D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2017-10', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-10', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-10', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-10', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-10', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-10', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-10', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-10', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-10', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-10', '2017M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-10', '2017M10D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2017-11', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-11', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-11', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-11', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-11', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-11', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-11', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-11', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-11', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-11', '2017M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-11', '2017M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-11', '2017M11D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2017-12', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-12', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-12', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-12', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-12', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-12', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-12', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-12', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-12', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-12', '2017M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-12', '2017M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-12', '2017M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2017-12', '2017M12D00', 1 );

# 2018


HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2018-01', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-01', '2018M01D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2018-02', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-01', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-02', '2018M02D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2018-03', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-03', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-03', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-03', '2018M03D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2018-04', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-04', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-04', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-04', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-04', '2018M04D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2018-05', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-05', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-05', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-05', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-05', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-05', '2018M05D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2018-06', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-06', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-06', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-06', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-06', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-06', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-06', '2018M06D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2018-07', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-07', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-07', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-07', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-07', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-07', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-07', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-07', '2018M07D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2018-08', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-08', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-08', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-08', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-08', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-08', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-08', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-08', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-08', '2018M08D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2018-09', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-09', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-09', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-09', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-09', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-09', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-09', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-09', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-09', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-09', '2018M09D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2018-10', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-10', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-10', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-10', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-10', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-10', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-10', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-10', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-10', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-10', '2018M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-10', '2018M10D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2018-11', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-11', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-11', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-11', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-11', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-11', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-11', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-11', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-11', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-11', '2018M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-11', '2018M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-11', '2018M11D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2018-12', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-12', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-12', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-12', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-12', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-12', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-12', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-12', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-12', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-12', '2018M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-12', '2018M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-12', '2018M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2018-12', '2018M12D00', 1 );

# 2019

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2019-01', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-01', '2019M01D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2019-02', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-01', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-02', '2019M02D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2019-03', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-03', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-03', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-03', '2019M03D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2019-04', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-04', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-04', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-04', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-04', '2019M04D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2019-05', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-05', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-05', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-05', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-05', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-05', '2019M05D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2019-06', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-06', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-06', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-06', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-06', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-06', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-06', '2019M06D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2019-07', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-07', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-07', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-07', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-07', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-07', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-07', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-07', '2019M07D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2019-08', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-08', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-08', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-08', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-08', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-08', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-08', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-08', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-08', '2019M08D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2019-09', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-09', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-09', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-09', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-09', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-09', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-09', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-09', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-09', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-09', '2019M09D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2019-10', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-10', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-10', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-10', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-10', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-10', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-10', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-10', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-10', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-10', '2019M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-10', '2019M10D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2019-11', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-11', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-11', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-11', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-11', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-11', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-11', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-11', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-11', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-11', '2019M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-11', '2019M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-11', '2019M11D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2019-12', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-12', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-12', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-12', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-12', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-12', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-12', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-12', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-12', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-12', '2019M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-12', '2019M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-12', '2019M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2019-12', '2019M12D00', 1 );

# 2020

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2020-01', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-01', '2020M01D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2020-02', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-01', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-02', '2020M02D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2020-03', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-03', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-03', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-03', '2020M03D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2020-04', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-04', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-04', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-04', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-04', '2020M04D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2020-05', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-05', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-05', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-05', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-05', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-05', '2020M05D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2020-06', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-06', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-06', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-06', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-06', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-06', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-06', '2020M06D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2020-07', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-07', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-07', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-07', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-07', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-07', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-07', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-07', '2020M07D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2020-08', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-08', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-08', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-08', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-08', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-08', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-08', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-08', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-08', '2020M08D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2020-09', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-09', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-09', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-09', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-09', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-09', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-09', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-09', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-09', '2020M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-09', '2020M09D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2020-10', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-10', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-10', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-10', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-10', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-10', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-10', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-10', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-10', '2020M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-10', '2020M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-10', '2020M10D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2020-11', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-11', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-11', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-11', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-11', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-11', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-11', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-11', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-11', '2020M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-11', '2020M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-11', '2020M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-11', '2020M11D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'YTD 2020-12', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-12', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-12', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-12', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-12', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-12', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-12', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-12', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-12', '2020M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-12', '2020M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-12', '2020M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-12', '2020M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'YTD 2020-12', '2020M12D00', 1 );

# Month Hierarchy

sHierarchy = 'Year';

HierarchyCreate ( sDim, sHierarchy );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Year', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2020M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2015M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2016M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2017M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2018M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2019M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2020M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2015M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2016M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2017M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2018M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2019M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2020M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2015M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2016M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2017M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2018M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2019M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2020M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2015M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2016M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2017M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2018M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2019M12D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year', '2020M12D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Year 2015', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2015', '2015M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2015', '2015M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2015', '2015M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2015', '2015M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2015', '2015M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2015', '2015M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2015', '2015M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2015', '2015M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2015', '2015M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2015', '2015M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2015', '2015M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2015', '2015M12D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Year 2016', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2016', '2016M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2016', '2016M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2016', '2016M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2016', '2016M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2016', '2016M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2016', '2016M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2016', '2016M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2016', '2016M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2016', '2016M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2016', '2016M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2016', '2016M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2016', '2016M12D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Year 2017', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2017', '2017M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2017', '2017M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2017', '2017M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2017', '2017M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2017', '2017M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2017', '2017M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2017', '2017M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2017', '2017M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2017', '2017M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2017', '2017M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2017', '2017M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2017', '2017M12D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Year 2018', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2018', '2018M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2018', '2018M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2018', '2018M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2018', '2018M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2018', '2018M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2018', '2018M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2018', '2018M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2018', '2018M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2018', '2018M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2018', '2018M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2018', '2018M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2018', '2018M12D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Year 2019', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2019', '2019M12D00', 1 );

HierarchyElementInsert(sDim, sHierarchy, '', 'All Year 2020', 'C');
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2020', '2020M01D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2020', '2020M02D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2020', '2020M03D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2020', '2020M04D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2020', '2020M05D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2020', '2020M06D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2020', '2020M07D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2020', '2020M08D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2020', '2020M09D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2020', '2020M10D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2020', '2020M11D00', 1 );
HierarchyElementComponentAdd(sDim, sHierarchy, 'All Year 2020', '2020M12D00', 1 );


# Logging
LogOutput ( 'INFO', sDim | ' created ');


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

# Logging
LogOutput ( 'INFO', sDim | ' created ');


####################################################################################################################
# Test 1 Measure
####################################################################################################################

sDim = 'Test 1 Measure';

# Create dimension

DimensionCreate(sDim);

# Element Create

DimensionElementInsert( sDim, '', 'Input', 'N' );
DimensionElementInsert( sDim, '', 'Calculated', 'N' );

# Logging
LogOutput ( 'INFO', sDim | ' created ');


####################################################################################################################
# Test 2 Measure
####################################################################################################################

sDim = 'Test 2 Measure';

# Create dimension

DimensionCreate(sDim);

# Element Create

DimensionElementInsert( sDim, '', 'Input', 'N' );
DimensionElementInsert( sDim, '', 'Calculated', 'N' );

# Logging
LogOutput ( 'INFO', sDim | ' created ');

