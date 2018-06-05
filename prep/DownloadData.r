root <- rprojroot::find_rstudio_root_file()
dataDir <- file.path(root, 'data')

# ExcelExample.xlsx
download.file(
	'https://query.data.world/s/5wa6K_X91yfkf-BVpRe2UIabO5A-QB',
	destfile=file.path(dataDir, 'ExcelExample.xlsx'),
	mode='wb')

# FavoriteSpots.json
download.file(
	'https://query.data.world/s/033kPeDH9pMdcnhPRIOwhjrw3lpA10',
	destfile=file.path(dataDir, 'FavoriteSpots.json'),
	mode='w')

# flightPaths.csv
download.file(
	'https://query.data.world/s/IIwWxfh9cTydB8h_OueRyA7yxvZ6bf',
	destfile=file.path(dataDir, 'flightPaths.csv'),
	mode='w')

# visited.csv
download.file(
	'https://query.data.world/s/GCIO0yVrO50N130s_CZNK50ujmqrE3',
	destfile=file.path(dataDir, 'visited.csv'),
	mode='w')

