#! /bin/bash

#### * (1) Top

#### /home/laurence/3DLDF-3.0/astronmy/stars_with_celestial_coordinates.sh
#### Created by Laurence D. Finston (LDF) Wed 16 Jun 2021 10:14:31 AM CEST

#### * (1)

a=`echo "select bayer_designation_greek_letter from Stars where \
   bayer_designation_greek_letter = \"Epsilon\" and constellation_name_genitive = \"Centauri\";" | mysql --batch --silent 3dldf`

echo "a == $a"

if test -z "$a" 
then
   echo "a is empty.  a == $a"
else
   echo "a is non-empty.  a == $a"
fi

## !! START HERE:  LDF 2021.06.15.  */ 

a=`echo "select * from Stars where bayer_designation_greek_letter = \"Epsilon\" and constellation_name_genitive = \"Centauri\";"`

b="select * from Stars where bayer_designation_greek_letter = \"Epsilon\" and constellation_name_genitive = \"Centauri\";"`

if test -z "$a" 
then
   echo "a is empty.  a == $a"
   
else
   echo "a is non-empty.  a == $a"
fi

-- !! 75. Epsilon Centauri                            13 40 -53.5  310.2  +8.7  B1III         2.29  -3.02    8.68 0.77   380

-- !! 79. Eta Centauri                                14 36 -42.2  322.9 +16.6  B1.5V         2.33v -2.55v  10.57 0.83   310

-- !! 99. Delta Centauri                              12 08 -50.7  295.9 +11.6  B2IV          2.58v -2.84v   8.25 0.79   400

-- update Stars set approx_rank_apparent_magnitude = 105, common_name = "Zubenelgenubi" where bayer_designation_greek_letter = "Alpha"
-- and constellation_name_genitive = "Librae";

-- !! 107. Theta Aurigae                               06 00 +37.2  174.4  +6.8  A0III+G2V     2.65  -0.98   18.83 0.81   170

-- !! 113. Mu Velorum                                  10 47 -49.4  283.1  +8.6  G5III+G2V     2.69  -0.06   28.18 0.49   116
-- !! 114. Alpha Muscae                                12 37 -69.1  301.6  -6.3  B2V           2.69  -2.17   10.67 0.48   310

-- !! 116. Pi Puppis                                   07 17 -37.1  249.0 -11.3  K4Ib          2.71  -4.92    2.98 0.55  1100

-- !! 121. Theta Carinae                               10 43 -64.4  289.6  -4.9  B0V           2.74  -2.91    7.43 0.50   440

-- !! 124. Iota Centauri                               13 21 -36.7  309.5 +25.8  A2V           2.75   1.48   55.64 0.74    59

-- !! 128. Delta Crucis                                12 15 -58.7  298.2  +3.8  B2IV          2.79  -2.45    8.96 0.60   360

-- !! Not found
-- update Stars set approx_rank_apparent_magnitude = 130, common_name = "Cor Caroli" where bayer_designation_greek_letter = "Alpha"
-- and constellation_name_genitive = "Canum Venaticorum";

-- !! 131. Gamma Lupi                                  15 35 -41.2  333.2 +11.9  B2IV-V+B2IV-V 2.80  -3.40    5.75 1.24   570

-- !! 134. Beta Hydri                                  00 26 -77.3  304.7 -39.7  G2IV          2.82   3.45  133.78 0.51    24
-- !! 135. Tau Scorpii                                 16 36 -28.2  351.6 +12.8  B0V           2.82  -2.78    7.59 0.78   430

/* !! START HERE:  LDF 2021.06.16.  */ 

/*

(fset 'temp-macro
   [C-f12 ?c ?\C-  C-right ?\C-w up up ?\C-s ?= ?\C-  right ?\C-y down down ?\C-a ?\C-  C-right C-left ?\C-w ?\C-  escape ?d up up ?\C-e left ?\C-y down down ?\C-a ?\C-  C-right C-left ?\C-w ?\C-  escape ?\C-s ?  ?  ?\C-  C-left C-right ?\C-  ?\C-a ?\C-w up ?\C-e left left ?\C-y down ?\C-a ?\C-  C-right C-left ?\C-w ?\C-  escape ?\C-s ?\[ ?0 ?- ?9 ?\] left ?\C-  C-left C-right ?\C-  ?\C-a ?\C-w up up ?\C-s ?\" ?\" left ?\C-y ?\C-a ?\C-  down down ?\C-i ?\C-k ?\C-a ?\C-k return ?\C-x ?\C-x ?\C-x ?\C-x])
(global-set-key [67109092] 'temp-macro)

C-ä

*/

-- !! 139. Beta Trianguli Australis                    15 55 -63.4  321.9  -7.5  F2IV          2.83   2.38   81.24 0.62    40
-- !! 140. Zeta Persei                                 03 54 +31.9  162.3 -16.7  B1II+B8IV+A2V 2.84  -4.55    3.32 0.75   980
-- !! 141. Beta Arae                                   17 25 -55.5  335.4 -11.0  K3Ib-II       2.84  -3.49    5.41 0.76   600

-- !! 147. Delta Cygni                                 19 45 +45.1   78.7 +10.2  B9.5III+F1V   2.86  -0.74   19.07 0.45   170

-- !! 149. Gamma Trianguli Australis                   15 19 -68.7  316.5  -8.4  A1III         2.87  -0.87   17.85 0.52   180
-- !! 150. Alpha Tucanae                               22 19 -60.3  330.1 -48.0  K3III         2.87  -1.05   16.42 0.59   200

-- !! 154. Pi Scorpii                                  15 59 -26.1  347.2 +20.2  B1V+B2V       2.89  -2.85    7.10 0.84   460
-- !! 155. Epsilon Persei                              03 58 +40.0  157.4 -10.1  B0.5V+A2V     2.90  -3.19    6.06 0.82   540

-- !! 159. Gamma Persei                                03 05 +53.5  142.1  -4.3  G8III+A2V     2.91  -1.57   12.72 0.71   260
-- !! 160. Upsilon Carinae                             09 47 -65.1  285.0  -8.8  A7Ib+B7III    2.92  -5.56    2.01 0.40  1600

-- !! 162. Tau Puppis                                  06 50 -50.6  260.2 -20.9  K1III         2.94  -0.80   17.85 0.49   185

-- !! 169. Gamma Hydrae                                13 19 -23.2  311.1 +39.3  G8III         2.99  -0.05   24.69 0.70   132
-- !! 170. Iota¹ Scorpii                               17 48 -40.1  350.6  -6.1  F2Ia          2.99  -5.71    1.82 0.73  1800

-- !! 172. Beta Trianguli                              02 10 +35.0  140.6 -25.2  A5III         3.00   0.09   26.24 0.77   124
-- !! 173. Psi Ursae Majoris                           11 10 +44.5  165.8 +63.2  K1III         3.00  -0.27   22.21 0.68   147

-- !! 175. Mu¹ Scorpii                                 16 52 -38.0  346.1  +3.9  B1.5V+B6.5V   3.00  -4.01    3.97 1.20   820
-- !! 176. Gamma Gruis                                 21 54 -37.4    6.1 -51.5  B8III         3.00  -0.97   16.07 0.77   205
-- !! 177. Delta Persei                                03 43 +47.8  150.3  -5.8  B5III         3.01  -3.04    6.18 0.85   530

-- !! 179. Omicron² Canis Majoris                      07 03 -23.8  235.6  -8.2  B3Ia          3.02  -6.46    1.27 0.56  2600

-- !! 182. Beta Muscae                                 12 46 -68.1  302.5  -5.2  B2V+B3V       3.04  -1.86   10.48 0.65   310

-- !! 188. Eta Sagittarii                              18 18 -36.8  356.4  -9.7  M3.5III       3.10  -0.20   21.87 0.92   149
-- !! 189. Zeta Hydrae                                 08 55 +05.9  222.3 +30.2  G9III         3.11  -0.21   21.64 0.99   150
-- !! 190. Nu Hydrae                                   10 50 -16.2  265.1 +37.6  K2III         3.11  -0.03   23.54 0.81   139
-- !! 191. Lambda Centauri                             11 36 -63.0  294.5  -1.4  B9III         3.11  -2.39    7.96 0.52   410

-- !! 195. Zeta Arae                                   16 59 -56.0  332.8  -8.2  K3II          3.12  -3.11    5.68 0.91   570

-- !! 198. Alpha Lyncis                                09 21 +34.4  190.2 +44.7  K7III         3.14  -1.02   14.69 0.81   220
-- !! 199. N Velorum                                   09 31 -57.0  278.2  -4.1  K5III         3.16  -1.15   13.72 0.51   240
-- !! 200. Pi Herculis                                 17 15 +36.8   60.7 +34.3  K3II          3.16  -2.10    8.89 0.52   370
-- !! 201. Nu Puppis                                   06 38 -43.2  251.9 -20.5  B8III         3.17  -2.39    7.71 0.52   420

-- !! 204. Phi Sagittarii                              18 46 -27.0    8.0 -10.8  B8III         3.17  -1.08   14.14 0.88   230

-- !! 206. Alpha Circini                               14 43 -65.0  314.3  -4.6  F0V+K5V       3.18   2.11   60.97 0.58    53

-- !! 208. Epsilon Leporis                             05 05 -22.4  223.3 -32.7  K5III         3.19  -1.02   14.39 0.68   225
-- !! 209. Kappa Ophiuchi                              16 58 +09.4   28.4 +29.5  K2III         3.19   1.09   37.99 0.75    86
-- !! 210. G Scorpii                                   17 50 -37.0  353.5  -4.9  K2III         3.19   0.24   25.71 0.87   127
-- !! 211. Zeta Cygni                                  21 13 +30.2   76.8 -12.5  G8III         3.21  -0.12   21.62 0.63   151

-- !! 213. Delta Lupi                                  15 21 -40.6  331.3 +13.8  B1.5IV        3.22  -2.75    6.39 0.86   510

-- !! 217. Alpha Pictoris                              06 48 -61.9  271.9 -24.1  A7III         3.24   0.83   32.96 2.14    99
-- !! 218. Theta Aquilae                               20 11 -00.8   41.6 -18.1  B9.5III       3.24  -1.48   11.36 0.92   285
-- !! 219. Sigma Puppis                                07 29 -43.3  255.7 -11.9  K5III+G5V     3.25  -0.51   17.74 0.47   185
-- !! 220. Pi Hydrae                                   14 06 -26.7  323.0 +33.3  K2III         3.25   0.79   32.17 0.77   101

-- !! 223. Gamma Hydri                                 03 47 -74.2  289.1 -37.8  M2III         3.26  -0.83   15.23 0.53   215
-- !! 224. Delta Andromedae                            00 39 +30.9  119.9 -31.9  K3III         3.27   0.81   32.19 0.68   101
-- !! 225. Theta Ophiuchi                              17 22 -25.0    0.5  +6.6  B2IV          3.27  -2.92    5.79 0.69   560

-- !! 227. Mu Leporis                                  05 13 -16.2  217.3 -28.9  B9IV          3.29v -0.47v  17.69 0.71   185
-- !! 228. Omega Carinae                               10 14 -70.0  290.2 -11.2  B8III         3.29  -1.99    8.81 0.48   370

-- !! 230. Alpha Doradus                               04 34 -55.0  263.8 -41.4  A0IV+B9IV     3.30  -0.36   18.56 0.46   175
-- !! 231. p Carinae                                   10 32 -61.7  287.2  -3.2  B4V           3.30  -2.62    6.56 0.49   500

-- !! 232. Mu Centauri                                 13 50 -42.5  314.2 +19.1  B2IV-V        3.30v -2.74v   6.19 0.71   530

-- !! 235. Gamma Arae                                  17 25 -56.4  334.6 -11.5  B1III         3.31  -4.40    2.87 0.75  1100
-- !! 236. Beta Phoenicis                              01 06 -46.7  295.5 -70.2  G8III         3.32  -0.55   16.9  9.9    190

-- !! 239. Eta Scorpii                                 17 12 -43.2  344.4  -2.3  F3III-IV      3.32   1.61   45.56 0.79    72
-- !! 240. Nu Ophiuchi                                 17 59 -09.8   18.2  +7.0  K0III         3.32  -0.03   21.35 0.79   155
-- !! 241. Tau Sagittarii                              19 07 -27.7    9.3 -15.4  K1III         3.32   0.48   27.09 1.48   120
-- !! 242. Alpha Reticuli                              04 14 -62.5  274.3 -41.7  G8III         3.33  -0.17   19.98 0.45   165

-- !! 249. Delta Aquilae                               19 25 +03.1   39.6  -6.1  F2IV          3.36   2.43   65.05 0.81    50
-- !! 250. Epsilon Lupi                                15 23 -44.7  329.2 +10.3  B2IV-V        3.37  -2.58    6.47 0.61   500

-- !! 252. Epsilon Hydrae                              08 47 +06.4  220.7 +28.5  G5III+A8V+F7V 3.38   0.29   24.13 1.29   135

-- !! 254. q Carinae                                   10 17 -61.3  285.5  -3.8  K3II          3.39  -3.38    4.43 0.49   740

-- !! 256. Zeta Cephei                                 22 11 +58.2  103.1  +1.7  K1II          3.39  -3.35    4.49 0.50   730
-- !! 257. Theta² Tauri                                04 29 +15.9  180.4 -22.0  A7III         3.40   0.10   21.89 0.83   150
-- !! 258. Gamma Phoenicis                             01 28 -43.3  280.5 -72.2  K5III         3.41  -0.87   13.94 0.64   235
-- !! 259. Lambda Tauri                                04 01 +12.5  178.4 -29.4  B3V+A4IV      3.41e -1.87    8.81 0.99   370
-- !! 260. Nu Centauri                                 13 50 -41.7  314.4 +19.9  B2IV          3.41  -2.41    6.87 0.77   475
-- !! 261. Zeta Lupi                                   15 12 -52.1  323.8  +5.0  G8III         3.41   0.65   28.06 0.71   116
-- !! 262. Eta Cephei                                  20 45 +61.8  097.9 +11.6  K0IV          3.41   2.63   69.73 0.49    47

-- !! 265. Eta Lupi                                    16 00 -38.4  338.8 +11.0  B2.5IV+A5V    3.42  -2.48    6.61 0.78   495
-- !! 266. Mu Herculis                                 17 46 +27.7  052.4 +25.6  G5IV          3.42   3.80  119.05 0.62    27
-- !! 267. Beta Pavonis                                20 45 -66.2  329.0 -36.0  A7III         3.42   0.29   23.71 0.63   140
-- !! 268. a Carinae                                   09 11 -58.9  277.7  -7.4  B2IV          3.43  -2.11    7.79 0.47   420

-- !! 275. Chi Carinae                                 07 57 -53.0  266.7 -12.3  B3IV          3.46  -1.91    8.43 0.52   390
-- !! 276. Delta Bootis                                15 16 +33.3  053.1 +58.4  G8III         3.46   0.69   27.94 0.61   117

-- !! 278. Eta Leonis                                  10 07 +16.8  219.5 +50.8  A0Ib          3.48  -5.60    1.53 0.77  2100
-- !! 279. Eta Herculis                                16 43 +38.9  062.3 +40.9  G8III         3.48   0.80   29.11 0.52   112
-- !! 280. Tau Ceti                                    01 44 -15.9  173.1 -73.4  G8V           3.49   5.68  274.17 0.80    12
-- !! 281. Sigma Canis Majoris                         07 02 -27.9  239.2 -10.3  K7Ib          3.49  -4.37    2.68 0.59  1200

-- !! 284. Alpha Telescopii                            18 27 -46.0  348.7 -15.2  B3IV          3.49  -0.93   13.08 0.71   250
-- !! 285. Epsilon Gruis                               22 49 -51.3  338.3 -56.5  A3V           3.49   0.49   25.16 0.68   130
-- !! 286. Kappa Canis Majoris                         06 50 -32.5  242.4 -14.5  B1.5IV        3.50  -3.42    4.13 0.50   790

-- !! 288. Iota Cephei                                 22 50 +66.2  111.1  +6.2  K0III         3.50   0.76   28.27 0.52   115
-- !! 289. Gamma Sagittae                              19 59 +19.5   58.0  -5.2  K5III         3.51  -1.11   11.90 0.71   270

-- !! 294. Xi² Sagittarii                              18 58 -21.1   14.6 -10.8  K0II          3.52  -1.77    8.76 0.99   370

-- !! 298. Xi Hydrae                                   11 33 -31.9  284.1 +28.1  G8III         3.54   0.55   25.23 0.83   130
-- !! 299. Mu Serpentis                                15 50 -03.4    4.6 +37.3  A0V           3.54   0.14   20.94 0.82   155
-- !! 300. Xi Serpentis                                17 38 -15.4   10.6  +8.7  F0III         3.54   0.99   30.93 1.03   105

exit 0

#### * (1)

#### This works.  LDF 2021.06.16.

a=`echo 'select * from Stars where \
   bayer_designation_greek_letter = "Epsilon" and constellation_name_genitive = "Centauri"\G' | mysql --batch 3dldf`

echo "a == $a"

if test -z "$a" 
then
   echo "a is empty.  a == $a"
else
   echo "a is non-empty.  a == $a"
fi

exit 0



## Local Variables:
## mode:plain-TeX
## End:
