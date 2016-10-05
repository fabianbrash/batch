REM #FileName:		Install_Dotnet3.bat
REM #Author:		Fabian Brash
REM #Date:			11-09-2015
REM #LastModified:	11-09-2015
REM #Purpose:		Install the DotNet3.x framework on an endpoint from the windows DVD--please match the source drive letter accordingly				




REM .----------------.  .----------------.  .----------------. 
REM | .--------------. || .--------------. || .--------------. |
REM | |  _______     | || |   ______     | || |    _______   | |
REM | | |_   __ \    | || |  |_   __ \   | || |   /  ___  |  | |
REM | |   | |__) |   | || |    | |__) |  | || |  |  (__ \_|  | |
REM | |   |  __ /    | || |    |  ___/   | || |   '.___`-.   | |
REM | |  _| |  \ \_  | || |   _| |_      | || |  |`\____) |  | |
REM | | |____| |___| | || |  |_____|     | || |  |_______.'  | |
REM | |              | || |              | || |              | |
REM | '--------------' || '--------------' || '--------------' |
REM '----------------'  '----------------'  '----------------' 

CLS

Dism /online /enable-feature /featurename:NetFx3 /ALL /Source:D:\sources\sxs /LimitAccess