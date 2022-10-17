//INTERIORLAR

#define		FILTERSCRIPT
#include 	<a_samp>            // Sürüm: 0.3.DL-R1
#include 	<streamer> 			// Sürüm: 2.9.2
#pragma tabsize 0
new tmpobjid;

public OnPlayerConnect(playerid)
{
    RemoveBuildingForPlayer(playerid, 4026, 1497.796, -1543.710, 17.554, 0.250);
	RemoveBuildingForPlayer(playerid, 4218, 1497.703, -1546.617, 43.992, 0.250);
	RemoveBuildingForPlayer(playerid, 4016, 1497.796, -1543.710, 17.554, 0.250);
	
	// Balýkçý Exterior
	RemoveBuildingForPlayer(playerid, 6465, 368.054, -2028.242, 8.734, 0.250);
	RemoveBuildingForPlayer(playerid, 6462, 368.054, -2028.242, 8.734, 0.250);

	// Makinalar
 	RemoveBuildingForPlayer(playerid, 1302, 0.0, 0.0, 0.0, 6000.0);
    RemoveBuildingForPlayer(playerid, 1209, 0.0, 0.0, 0.0, 6000.0);
    RemoveBuildingForPlayer(playerid, 955, 0.0, 0.0, 0.0, 6000.0);
    RemoveBuildingForPlayer(playerid, 956, 0.0, 0.0, 0.0, 6000.0);
    RemoveBuildingForPlayer(playerid, 1775, 0.0, 0.0, 0.0, 6000.0);
    RemoveBuildingForPlayer(playerid, 1776, 0.0, 0.0, 0.0, 6000.0);
    RemoveBuildingForPlayer(playerid, 1977, 0.0, 0.0, 0.0, 6000.0);

	// Benzinlik Pompalarý
	RemoveBuildingForPlayer(playerid, 1676, 1941.6563, -1767.2891, 14.1406, 6000.00);
	RemoveBuildingForPlayer(playerid, 1686, -1610.6172, -2721.0000, 47.9297, 6000.00);
	RemoveBuildingForPlayer(playerid, 3465, 2120.8203, 914.7188, 11.2578, 6000.00);
    return 1;
}

public OnFilterScriptInit()
{
	//bamas kulüP
	tmpobjid = CreateDynamicObject(3095, 1807.161987, -1717.836059, 12.026863, 0.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1807.161987, -1717.836059, 11.956861, 0.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1759.057861, -1721.741699, 8.074057, 0.000000, -89.599975, 89.800048, -1, -1, -1, 900.00, 900.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1750.364746, -1708.842163, 10.981524, 0.000000, -13.900002, 0.000000, -1, -1, -1, 900.00, 900.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1750.364746, -1699.902709, 10.981524, 0.000000, -13.900002, 0.000000, -1, -1, -1, 900.00, 900.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1750.364746, -1690.933227, 10.981524, 0.000000, -13.900002, 0.000000, -1, -1, -1, 900.00, 900.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1750.364746, -1681.990478, 10.981524, 0.000000, -13.900002, 0.000000, -1, -1, -1, 900.00, 900.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1750.364746, -1717.822265, 10.981524, 0.000000, -13.900002, 0.000000, -1, -1, -1, 900.00, 900.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1768.031250, -1721.772949, 8.074057, 0.000000, -89.599975, 89.800048, -1, -1, -1, 900.00, 900.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1759.112304, -1682.868164, 8.074510, 0.000000, -89.599975, -90.300056, -1, -1, -1, 900.00, 900.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	tmpobjid = CreateDynamicObject(3095, 1768.167480, -1682.912963, 8.074510, 0.000000, -89.599975, -90.300056, -1, -1, -1, 900.00, 900.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(-3007, 1792.625732, -1680.257934, 19.496873, 0.000000, 0.000000, -90.199867, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(8661, 1791.641845, -1692.309448, 12.526874, 0.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(8661, 1774.542602, -1692.309448, 12.586875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(8661, 1774.542602, -1712.280273, 12.586875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);

	//cankurtaran kulübe
	tmpobjid = CreateDynamicObject(-3012, 200.482070, -1873.478881, 3.330915, 3.099999, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(-3012, 245.442199, -1873.463012, 3.021368, 3.099999, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(-3012, 289.132202, -1873.488525, 3.520638, 3.099999, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(-3012, 337.512420, -1873.488525, 3.520638, 3.099999, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(-3012, 445.182525, -1873.508422, 3.910071, 3.099999, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(-3012, 498.422851, -1873.533447, 4.399357, 3.099999, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(-3012, 553.333740, -1873.564941, 5.008470, 3.099999, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(-3012, 609.655944, -1873.583984, 5.367946, 3.099999, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);

	//holywood tabela
	tmpobjid = CreateDynamicObject(-3008, 1418.278564, -804.784729, 84.289604, 90.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 19517, "noncolored", "gen_white", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(-3010, 1421.373168, -805.037353, 86.809791, 0.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(-3009, 1418.847290, -804.963745, 84.746467, 0.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);

	//Elektronik unitystion
	tmpobjid = CreateDynamicObject(-3005, 1845.771606, -1855.636962, 16.002838, 0.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(-3006, 1891.833740, -1872.271240, 14.894337, 0.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(5043, 1843.310913, -1856.301513, 13.801284, 0.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);

	//casino
	tmpobjid = CreateDynamicObject(-3013, 1498.141235, -1578.385009, 32.122940, 0.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);
	tmpobjid = CreateDynamicObject(1569, 1497.658203, -1580.141113, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 900.00, 900.00);

	// Pay'n Spray
	CreateDynamicObject(971, 1968.32361, 2162.83911, 12.31660,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(971, 2386.94336, 1043.38000, 9.81551,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, 2393.87915, 1483.56531, 12.40970,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, -1904.63831, 277.72247, 42.54020,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, -99.42410, 1111.42151, 20.71420,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, -1420.93152, 2591.09106, 56.93750,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(971, -2716.16284, 217.59410, 5.26560,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(971, 2644.82642, -2039.12512, 12.54423,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, 1843.24475, -1855.31128, 12.03920,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(971, 2005.60669, 2317.95142, 9.81943,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, 2005.25220, 2303.39917, 9.81609,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, -1787.26550, 1209.33838, 24.12236,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, -2425.38794, 1028.20154, 51.88770,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(971, 1042.48718, -1026.02039, 31.09455,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, -1925.14246, 303.76981, 40.16250,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(971, -1935.76648, 239.20853, 36.15960,   0.00000, 0.00000, 0.00000);
	tmpobjid = CreateDynamicObject(19482,719.944,-462.504,16.983,0.000,0.000,-89.499);
	SetDynamicObjectMaterialText(tmpobjid, 0, "Artýk hizmet vermemekteyiz.", 120, "Ariel", 17, 1, -1, 0, 1);
	tmpobjid = CreateDynamicObject(19482,1026.776,-1029.380,31.829,0.000,0.000,630.000);
	SetDynamicObjectMaterialText(tmpobjid, 0, "Artýk hizmet vermemekteyiz.", 120, "Ariel", 20, 1, -1, 0, 0);
	tmpobjid = CreateDynamicObject(19482,2071.616,-1829.323,13.104,0.000,0.000,0.000);
	SetDynamicObjectMaterialText(tmpobjid, 0, "Artýk hizmet vermemekteyiz.", 120, "Ariel", 20, 1, -1, 0, 0);
	tmpobjid = CreateDynamicObject(19482,486.919,-1734.626,10.879,0.000,0.000,81.600);
	SetDynamicObjectMaterialText(tmpobjid, 0, "Artýk hizmet vermemekteyiz.", 120, "Ariel", 20, 1, -1, 0, 0);
	CreateDynamicObject(972,723.474,-459.048,4.143,90.000,-89.500,0.000);
	CreateDynamicObject(972,1028.585,-1025.947,20.665,90.000,0.000,630.000);
	CreateDynamicObject(972,2068.167,-1827.791,2.316,90.000,0.000,360.000);
	CreateDynamicObject(972,484.023,-1737.686,0.064,90.000,-8.399,90.000);
	
	// Balýkçýlýk
	CreateDynamicObject(17457, -50.01468, -1558.33167, 7.12670,   0.00000, 0.00000, 60.00000);
	CreateDynamicObject(6417, -78.72794, -1665.39697, -15.58972,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(6050, -106.19099, -1566.61865, 3.58135,   0.00000, 0.00000, 300.84122);
	CreateDynamicObject(9245, -86.82704, -1600.95776, 13.72700,   0.00000, 0.00000, 120.00000);
	CreateDynamicObject(11544, -81.38634, -1632.98218, 1.88025,   0.00000, 0.00000, 0.00000);
	
	///commerce hastahane
	tmpobjid = CreateDynamicObject(6966, 1482.244873, -1561.160522, 12.635600, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 4, 14668, "711c", "cj_white_wall2", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 8, 10101, "2notherbuildsfe", "sl_vicwall01", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 11, 9514, "711_sfw", "staddoors1", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 14, 10101, "2notherbuildsfe", "sl_vicwall01", 0x00000000);
	tmpobjid = CreateDynamicObject(16773, 1510.925781, -1502.239746, 16.470918, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "policeshieldgls", 0x00000000);
	tmpobjid = CreateDynamicObject(16773, 1496.465454, -1502.239746, 16.470918, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "policeshieldgls", 0x00000000);
	tmpobjid = CreateDynamicObject(16773, 1481.944458, -1502.239746, 16.470918, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "policeshieldgls", 0x00000000);
	tmpobjid = CreateDynamicObject(16773, 1473.034667, -1502.239746, 16.470918, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "policeshieldgls", 0x00000000);
	tmpobjid = CreateDynamicObject(16773, 1465.904785, -1509.819580, 14.770919, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "policeshieldgls", 0x00000000);
	tmpobjid = CreateDynamicObject(16773, 1518.155517, -1509.700073, 15.430909, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "policeshieldgls", 0x00000000);
	tmpobjid = CreateDynamicObject(16773, 1516.996215, -1574.869384, 9.920919, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "sl_vicwall01", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(16773, 1482.786010, -1522.579467, 16.470918, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(6010, 1448.651000, -1569.115966, 13.106825, 0.000000, -0.800000, 93.400001, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1468, 1463.954833, -1572.345581, 13.759834, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1468, 1463.954833, -1567.175537, 13.759834, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1468, 1463.954833, -1565.415527, 13.759834, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(984, 1457.404785, -1575.391601, 13.216876, 0.000000, 0.000000, -86.799987, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(984, 1446.241821, -1576.015869, 13.216876, 0.000000, 0.000000, -86.799987, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(984, 1440.606811, -1570.116455, 13.216876, 0.000000, 0.000000, -7.599986, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1449.659545, -1571.318481, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1454.819335, -1571.318481, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1452.889160, -1567.958740, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1457.199584, -1568.878662, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1457.199584, -1566.328613, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1450.069335, -1566.328613, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1447.468994, -1568.678833, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1446.288574, -1572.169311, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1448.498901, -1574.199218, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1452.288940, -1574.199218, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1458.988769, -1571.499511, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1460.448974, -1567.819335, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1445.518798, -1566.808471, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1442.418090, -1574.589355, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1442.418090, -1571.669433, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1442.418090, -1568.459106, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1457.228393, -1573.879638, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1432, 1461.118896, -1573.140136, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(2643, 1455.344238, -1564.332031, 13.959790, 0.000000, 0.000000, 1.899999, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1653, 1524.779418, -1521.898071, 13.219823, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1653, 1531.109741, -1528.258300, 13.219823, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1653, 1531.109741, -1541.028686, 13.219823, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1653, 1531.109741, -1553.839233, 13.219823, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1653, 1531.109741, -1566.649536, 13.219823, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1653, 1531.109741, -1574.689575, 13.219823, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1653, 1531.109741, -1574.689453, 13.219823, 0.000007, 0.000000, -90.000053, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1653, 1531.109741, -1561.919067, 13.219823, 0.000007, 0.000000, -90.000053, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1653, 1531.109741, -1549.108520, 13.219823, 0.000007, 0.000000, -90.000053, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1653, 1531.109741, -1536.298217, 13.219823, 0.000007, 0.000000, -90.000053, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1653, 1531.109741, -1528.258178, 13.219823, 0.000007, 0.000000, -90.000053, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1653, 1524.779418, -1521.898071, 13.219823, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(4642, 1531.507568, -1580.552978, 14.196875, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	//////FÝSHER EXTERÝOR
	tmpobjid = CreateDynamicObject(19372, 360.800994, -2033.639526, 8.411874, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	tmpobjid = CreateDynamicObject(19372, 359.221008, -2035.290039, 8.411874, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 19655, "mattubes", "bluedirt1", 0x00000000);
	tmpobjid = CreateDynamicObject(19372, 356.210968, -2035.290039, 8.411874, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	tmpobjid = CreateDynamicObject(19372, 353.671203, -2033.729492, 8.421877, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 19655, "mattubes", "bluedirt1", 0x00000000);
	tmpobjid = CreateDynamicObject(19444, 353.857391, -2035.304321, 8.425944, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 19655, "mattubes", "bluedirt1", 0x00000000);
	tmpobjid = CreateDynamicObject(19372, 353.670898, -2030.569091, 8.411874, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	tmpobjid = CreateDynamicObject(19372, 353.651092, -2027.499511, 8.421877, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 19655, "mattubes", "bluedirt1", 0x00000000);
	tmpobjid = CreateDynamicObject(19444, 353.857391, -2025.973510, 8.425944, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 19655, "mattubes", "bluedirt1", 0x00000000);
	tmpobjid = CreateDynamicObject(19372, 356.210968, -2025.929443, 8.411874, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	tmpobjid = CreateDynamicObject(19372, 359.221008, -2025.919921, 8.411874, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 19655, "mattubes", "bluedirt1", 0x00000000);
	tmpobjid = CreateDynamicObject(19372, 360.820983, -2027.499145, 8.411874, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	tmpobjid = CreateDynamicObject(19385, 360.793579, -2030.581054, 8.425937, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 19655, "mattubes", "bluedirt1", 0x00000000);
	tmpobjid = CreateDynamicObject(19447, 358.970825, -2030.642822, 6.775942, 0.000000, -90.200035, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19447, 355.470794, -2030.642822, 6.763725, 0.000000, -90.200035, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19447, 359.040924, -2030.642822, 10.035953, 0.000000, -90.200027, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19447, 355.540893, -2030.642822, 10.023736, 0.000000, -90.200027, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19447, 359.040924, -2030.642822, 10.035953, 0.000000, -90.200019, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	tmpobjid = CreateDynamicObject(19447, 355.540893, -2030.642822, 10.023736, 0.000000, -90.200019, 0.000000, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16639, "a51_labs", "ws_trainstationwin1", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(1523, 360.848175, -2031.328613, 6.665937, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1845, 355.880462, -2027.500000, 6.819995, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1845, 355.880462, -2030.459838, 6.819995, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(2585, 354.106506, -2033.790771, 8.679150, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(2509, 359.536621, -2035.122070, 8.657511, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19566, 359.196838, -2034.994262, 9.201711, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19566, 359.876892, -2034.994262, 9.201711, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19566, 359.196838, -2034.994262, 9.201711, 0.000000, 0.000007, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19566, 359.876892, -2034.994262, 9.201711, 0.000000, 0.000007, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19566, 359.196838, -2034.994262, 8.771708, 0.000000, 0.000015, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19566, 359.876892, -2034.994262, 8.771708, 0.000000, 0.000015, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19566, 359.196838, -2034.994262, 8.351711, 0.000000, 0.000015, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19566, 359.876892, -2034.994262, 8.351711, 0.000000, 0.000015, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19566, 359.196838, -2034.994262, 7.921708, 0.000000, 0.000022, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19566, 359.876892, -2034.994262, 7.921708, 0.000000, 0.000022, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(18632, 354.076263, -2028.340576, 8.019913, -0.099999, -177.599945, 71.399993, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(2509, 354.019012, -2027.954223, 8.626422, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(18632, 354.083160, -2028.100708, 8.010158, -0.099999, -177.599945, 71.399993, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(18632, 354.077484, -2027.866943, 8.000806, -0.099999, -177.599945, 88.700050, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(18632, 354.082244, -2027.656982, 7.992013, -0.099999, -177.599945, 88.700050, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(18632, 354.087219, -2027.437133, 7.982801, -0.099999, -177.599945, 88.700050, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1600, 360.076843, -2026.133789, 8.139724, 0.000007, 0.000000, 89.999977, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1599, 358.296936, -2026.029663, 8.265228, 0.000007, 15.699999, 89.999977, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1599, 358.296936, -2026.029663, 9.225229, 0.000000, 15.699999, 90.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1600, 360.076843, -2026.133789, 9.129723, 0.000007, 0.000000, 89.999977, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(19630, 359.133789, -2026.031860, 9.242932, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1604, 359.232940, -2026.090820, 8.234225, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00);
	//////MADENCÝ EXT
	tmpobjid = CreateDynamicObject(19451, 692.925170, 895.015991, -39.506290, 0.000000, -89.400001, -157.799987, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "forumstand1_LAe", 0x00000000);
	tmpobjid = CreateDynamicObject(19451, 689.869873, 893.769226, -39.540847, 0.000000, -89.400001, -157.799987, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "forumstand1_LAe", 0x00000000);
	tmpobjid = CreateDynamicObject(19451, 686.694335, 892.473449, -39.576786, 0.000000, -89.400001, -157.799987, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "forumstand1_LAe", 0x00000000);
	tmpobjid = CreateDynamicObject(19451, 685.211059, 891.867919, -41.283626, 0.000000, 0.599998, -157.799987, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateDynamicObject(19451, 687.799621, 898.043212, -41.233924, 0.000000, 0.599998, -67.799987, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateDynamicObject(19451, 694.496948, 895.657531, -41.178600, 0.000000, 0.599998, -157.799987, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateDynamicObject(19451, 688.142333, 898.183227, -41.233924, 0.000000, 0.599998, -67.799987, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateDynamicObject(19451, 691.359802, 889.293395, -41.233924, -0.000007, 0.600001, -67.799980, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateDynamicObject(19451, 691.702514, 889.433410, -41.233924, -0.000007, 0.600001, -67.799980, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 3095, "a51jdrx", "sam_camo", 0x00000000);
	tmpobjid = CreateDynamicObject(19454, 685.233337, 891.861633, -37.815334, 0.000000, 0.000000, 22.300006, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	tmpobjid = CreateDynamicObject(19454, 687.917663, 898.150817, -37.815334, 0.000000, 0.000000, 112.300003, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "a51_vent1", 0x00000000);
	tmpobjid = CreateDynamicObject(19454, 694.064636, 895.495361, -37.815334, 0.000000, 0.000000, 202.300003, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "a51_vent1", 0x00000000);
	tmpobjid = CreateDynamicObject(19387, 688.468444, 888.241455, -37.725234, 0.000000, 0.000000, -66.699996, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "a51_vent1", 0x00000000);
	tmpobjid = CreateDynamicObject(19353, 691.408203, 889.468933, -37.733287, 0.000000, 0.000000, -67.999992, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "a51_vent1", 0x00000000);
	tmpobjid = CreateDynamicObject(19353, 694.328857, 890.648925, -37.733287, 0.000000, 0.000000, -67.999992, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "a51_vent1", 0x00000000);
	tmpobjid = CreateDynamicObject(19451, 692.925170, 895.015991, -35.956295, -0.000005, -89.400016, -157.799896, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "forumstand1_LAe", 0x00000000);
	tmpobjid = CreateDynamicObject(19451, 689.869873, 893.769226, -35.990852, -0.000005, -89.400016, -157.799896, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "forumstand1_LAe", 0x00000000);
	tmpobjid = CreateDynamicObject(19451, 686.694335, 892.473449, -36.026790, -0.000005, -89.400016, -157.799896, -1, -1, -1, 300.00, 300.00);
	SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "forumstand1_LAe", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	tmpobjid = CreateDynamicObject(1472, 688.795593, 887.680053, -39.900154, -1.000000, 0.000000, 27.300004, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(2991, 690.783813, 898.085632, -38.864784, 0.000000, 0.000000, 22.499984, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(2185, 693.175720, 892.440124, -39.442543, 0.000000, 0.000000, -66.099998, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1811, 694.333923, 892.034851, -38.832557, 3.100001, -1.800000, -6.900000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(3632, 688.356872, 897.859069, -38.960338, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(925, 692.611022, 896.433898, -38.472770, 0.000000, 0.000000, 292.600006, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(929, 686.083435, 896.606506, -38.674018, 0.000000, 0.000000, -70.199989, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1711, 686.727966, 893.972778, -39.444969, 0.000000, 0.000000, 23.200002, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1711, 688.405578, 890.796203, -39.444969, 0.000000, 0.000000, 203.200012, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(2115, 687.070495, 892.674804, -39.777046, 0.000000, 0.000000, -64.700004, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1711, 688.363769, 893.619018, -39.529464, 0.000000, 0.000000, -67.499992, -1, -1, -1, 300.00, 300.00);
	tmpobjid = CreateDynamicObject(1711, 688.884277, 892.362487, -39.529464, 0.000000, 0.000000, -67.499992, -1, -1, -1, 300.00, 300.00);

	return 1;
}



