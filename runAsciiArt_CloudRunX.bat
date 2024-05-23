@ECHO OFF 
rem artillery run file
rem modify for each new run
rem artillery etc being PS files need call to run them 
rem CAUTION if requesting much data, DEBUG grabs loads ! 
rem set DEBUG=http*
rem run from artillery project directory
set runArtillery=".\\node_modules\\.bin\\artillery"
set reportFile=".\\test-results\\ArtilleryAsciiArt-test-run-report04"
set YAMLFile="ArtilleryAsciiArt.yml"
rem run to cloud 
call "%runArtillery%" run  "%YAMLFile%" --record --key a9_0TeJL78cIJCEYXj7TrSyICEzdJz97Mf7
rem call "%runArtillery%" run --output "%reportFile%".json  "%YAMLFile%"

rem call "%runArtillery%" report "%reportFile%".json --output "%reportFile%".html
