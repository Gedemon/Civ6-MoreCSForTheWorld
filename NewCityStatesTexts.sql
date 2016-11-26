/*

	YnAMP
	City States Text creation file
	by Gedemon (2016)	
	
*/

DROP TABLE IF EXISTS CityStatesTextsConfiguration;
		
CREATE TABLE CityStatesTextsConfiguration
	(	Name TEXT,
		en_US_Name TEXT,
		en_US_Adj TEXT,
		en_US_Desc TEXT,
		en_US_CapitalName TEXT		
	);

-----------------------------------------------
-- Fill the initialization table
-----------------------------------------------
INSERT INTO CityStatesTextsConfiguration
	(		Name,			en_US_Name,		en_US_Adj,		en_US_Desc,					en_US_CapitalName 	)
SELECT	'SUTAIO',			'Cheyenne',		'Cheyenne',		'Sutaio city-state',		'Sutaio'		UNION ALL
SELECT	'LAKOTA',			'Sioux',		'Sioux',		'Lakota city-state',		'Lakota'		UNION ALL
SELECT	'HARAPPA',			'Harappa',		'Harappan',		'Harappa city-state',		'Harappa'		UNION ALL
SELECT	'DAKAR',			'Senegal',		'Senegalese',	'Dakar city-state',			'Dakar'			UNION ALL
SELECT	'REYKJAVIK',		'Iceland',		'Icelander',	'Reykjavik city-state',		'Reykjavik'		UNION ALL
SELECT	'GARAMANTES',		'Garama',		'Berber',		'Garama city-state',		'Garama'		UNION ALL
SELECT	'SAMARKAND',		'Uzbekistan',	'Uzbek',		'Samarkand city-state',		'Samarkand'		UNION ALL
SELECT	'TIKAL',			'Maya',			'Maya',			'Tikal city-state',			'Tikal'			UNION ALL
SELECT	'CUZCO',			'Inca',			'Inca',			'Cuzco city-state',			'Cuzco'			UNION ALL
SELECT	'IFE',				'Nigeria',		'Nigerian',		'Ile Ife city-state',		'Ile Ife'		UNION ALL
SELECT	'ULUNDI',			'Zulu',			'Zulu',			'Ulundi city-state',		'Ulundi'		UNION ALL
SELECT	'MOGADISHU',		'Somalia',		'Somalian',		'Mogadishu city-state',		'Mogadishu'		UNION ALL
SELECT	'AKSUM',			'Ethiopia',		'Ethiopian',	'Aksum city-state',			'Aksum'			UNION ALL
SELECT	'RABAT',			'Morocco',		'Moroccan',		'Rabat city-state',			'Rabat'			UNION ALL
SELECT	'KIEV',				'Kiev',			'Kievan',		'Kiev city-state',			'Kiev'			UNION ALL
SELECT	'WARSAW',			'Warsaw',		'Polish',		'Warsaw city-state',		'Warsaw'		UNION ALL
SELECT	'SIDNEY',			'Sydney',		'Australian',	'Sidney city-state',		'Sydney'		UNION ALL
SELECT	'DUBLIN',			'Dublin',		'Irish',		'Dublin city-state',		'Dublin'		UNION ALL
SELECT	'VANCOUVER',		'Vancouver',	'Vancouverite',	'Vancouver city-state',		'Vancouver'		UNION ALL
SELECT	'CAPE_TOWN',		'Cape Town',	'Capetonian',	'Cape Town city-state',		'Cape Town'		UNION ALL
SELECT	'END_OF_INSERT',	NULL,			NULL,			NULL,						NULL;
-----------------------------------------------

-- Remove "END_OF_INSERT" entry 
DELETE from CityStatesTextsConfiguration WHERE Name ='END_OF_INSERT';
	
-- <LocalizedText>
INSERT OR IGNORE INTO LocalizedText (Tag, Text, Language)
	SELECT	'LOC_CIVILIZATION_' || Name || '_NAME', en_US_Name, 'en_US'
	FROM CityStatesTextsConfiguration;
INSERT OR IGNORE INTO LocalizedText (Tag, Text, Language)
	SELECT	'LOC_CIVILIZATION_' || Name || '_ADJECTIVE', en_US_Adj, 'en_US'
	FROM CityStatesTextsConfiguration;
INSERT OR IGNORE INTO LocalizedText (Tag, Text, Language)
	SELECT	'LOC_CIVILIZATION_' || Name || '_DESCRIPTION', en_US_Desc, 'en_US'
	FROM CityStatesTextsConfiguration;
INSERT OR IGNORE INTO LocalizedText (Tag, Text, Language)
	SELECT	'LOC_CITY_NAME_' || Name || '_1', en_US_CapitalName, 'en_US'
	FROM CityStatesTextsConfiguration;
INSERT OR IGNORE INTO LocalizedText (Tag, Text, Language)
	SELECT	'LOC_CITY_NAME_' || Name || '_2', en_US_CapitalName, 'en_US'
	FROM CityStatesTextsConfiguration;
INSERT OR IGNORE INTO LocalizedText (Tag, Text, Language)
	SELECT	'LOC_CITY_NAME_' || Name || '_3', en_US_CapitalName, 'en_US'
	FROM CityStatesTextsConfiguration;
INSERT OR IGNORE INTO LocalizedText (Tag, Text, Language)
	SELECT	'LOC_CITY_NAME_' || Name || '_4', en_US_CapitalName, 'en_US'
	FROM CityStatesTextsConfiguration;
INSERT OR IGNORE INTO LocalizedText (Tag, Text, Language)
	SELECT	'LOC_CITY_NAME_' || Name || '_5', en_US_CapitalName, 'en_US'
	FROM CityStatesTextsConfiguration;
INSERT OR IGNORE INTO LocalizedText (Tag, Text, Language)
	SELECT	'LOC_PEDIA_CITYSTATES_PAGE_CIVILIZATION_' || Name || '_CHAPTER_HISTORY_PARA_1', en_US_Name, 'en_US' 
	FROM CityStatesTextsConfiguration;
INSERT OR IGNORE INTO LocalizedText (Tag, Text, Language)
	SELECT	'LOC_PEDIA_CITYSTATES_PAGE_CIVILIZATION_' || Name || '_CHAPTER_HISTORY_PARA_2', '...', 'en_US' 
	FROM CityStatesTextsConfiguration;
INSERT OR IGNORE INTO LocalizedText (Tag, Text, Language)
	SELECT	'LOC_PEDIA_CITYSTATES_PAGE_CIVILIZATION_' || Name || '_CHAPTER_HISTORY_PARA_3', '...', 'en_US' 
	FROM CityStatesTextsConfiguration;

-----------------------------------------------
-- Delete temporary table
-----------------------------------------------

DROP TABLE CityStatesTextsConfiguration;
