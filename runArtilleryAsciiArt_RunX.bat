@ECHO OFF 
rem artillery run file
rem modify for each new run
rem artillery etc being PS files need call to run them 
rem CAUTION if requesting much data, DEBUG grabs loads ! 
rem set DEBUG=http*
rem run from artillery project directory
set runArtillery=".\\node_modules\\.bin\\artillery"
set reportFile=".\\test-results\\ArtilleryAsciiArt-test-run-report01"
set YAMLFile="ArtilleryAsciiArt.yml"
call "%runArtillery%" run --output "%reportFile%".json  "%YAMLFile%"

call "%runArtillery%" report "%reportFile%".json --output "%reportFile%".html
