@ECHO OFF 
rem artillery run file
rem modify for each new run
rem artillery etc being PS files need call to run them 
rem CAUTION if requesting much data, DEBUG grabs loads ! 
rem set DEBUG=http*
rem run from artillery directory
set runArtillery=".\\node_modules\\.bin\\artillery"
set reportFile=".\\test-results\\test-run-reportPW03"
set YAMLFile="firstArtilleryPWScenario.yml"
call "%runArtillery%" run --output "%reportFile%".json  "%YAMLFile%"

rem call .\node_modules\.bin\artillery report .\JAM_report05.json --output .\JAM_report05.html

call "%runArtillery%" report "%reportFile%".json --output "%reportFile%".html
