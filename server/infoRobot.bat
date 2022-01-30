@echo off
SetLocal EnableDelayedExpansion

REM --------------COMPUTER SYSTEM
REM устанавливаем инкремент count для цикла 
SET count=1
REM ищем характеристику всех однотипных комплектующих
FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic computersystem get name"`) DO (
set pcName!count!=%%a
set /a count=!count!+1
)

	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic computersystem get Domain"`) DO (
	set pcDomain!count!=%%a
	set /a count=!count!+1
	)

	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic computersystem get UserName"`) DO (
	set pcUser!count!=%%a
	set /a count=!count!+1
	)

	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic computersystem get TotalPhysicalMemory"`) DO (
	set pcTotalMem!count!=%%a
	set /a count=!count!+1
	)
REM --------------COMPUTER SYSTEM


REM --------------OS information
REM устанавливаем инкремент count для цикла 
SET count=1
REM ищем характеристику всех однотипных комплектующих
FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic os get Caption"`) DO (
set osCaption!count!=%%a
set /a count=!count!+1
)

	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic os get RegisteredUser"`) DO (
	set osRegUser!count!=%%a
	set /a count=!count!+1
	)

	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic os get SerialNumber"`) DO (
	set osSerial!count!=%%a
	set /a count=!count!+1
	)

	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic os get OSArchitecture"`) DO (
	set pcArch!count!=%%a
	set /a count=!count!+1
	)
REM --------------OS information


REM --------------BASEBOARD information
REM устанавливаем инкремент count для цикла 
SET count=1
REM ищем характеристику всех однотипных комплектующих
FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic baseboard get Caption"`) DO (
set boardCaption!count!=%%a
set /a count=!count!+1
)

	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic baseboard get product"`) DO (
	set boardProduct!count!=%%a
	set /a count=!count!+1
	)

	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic baseboard get serialnumber"`) DO (
	set boardSerial!count!=%%a
	set /a count=!count!+1
	)

	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic baseboard get manufacturer"`) DO (
	set boardManufacturer!count!=%%a
	set /a count=!count!+1
	)
	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM берем первую часть разделенных запятыми
	FOR /F "tokens=1 usebackq delims=[,]" %%a IN ('%boardManufacturer2%') DO (
		set boardManufacturer2!count!=%%a
		set /a count=!count!+1
	)
REM --------------BASEBOARD information


REM --------------CPU information
REM устанавливаем инкремент count для цикла 
SET count=1
REM ищем характеристику всех однотипных комплектующих
FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic cpu get Caption"`) DO (
set cpuCaption!count!=%%a
set /a count=!count!+1
)

	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic cpu get name"`) DO (
	set cpuName!count!=%%a
	set /a count=!count!+1
	)

	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=1 usebackq delims=[]" %%a IN (`"wmic cpu get SocketDesignation"`) DO (
	set cpuSoket!count!=%%a
	set /a count=!count!+1
	)
REM --------------CPU information	
	
REM --------------disk information
REM устанавливаем инкремент count для цикла 
SET count=1
REM ищем характеристику всех однотипных комплектующих
FOR /F "tokens=2 usebackq delims=[]=" %%a IN (`"wmic diskdrive get Model /value"`) DO (
set driveModel!count!=%%a
set /a count=!count!+1
)	
	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=2 usebackq delims=[]=" %%a IN (`"wmic diskdrive get SerialNumber /value"`) DO (
	set driveSerial!count!=%%a
	set /a count=!count!+1
	)

	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=2 usebackq delims=[]=" %%a IN (`"wmic diskdrive get Size /value"`) DO (
	set driveSize!count!=%%a
	set /a count=!count!+1
	)

	rem Делаем одну большую строку
	set /a count=!count!-1
	set "alldrive="
	for /L %%B in (1,1,!count!) do (
		rem Обрезаем у переменных окончаение строк (перевод строки)
		set D1=Name=!driveModel%%B:~0,-1!
		set D2=SN=!driveSerial%%B:~0,-1!
		rem Удаляем все пробелы в серийном номере
		set D2=!D2: =!
		set D3=Size=!driveSize%%B:~0,-10! GB
		set "D4= -- "
		set alldrive=!alldrive!!D1!!D4!!D2!!D4!!D3!!D4!
	)
REM --------------disk information
		
REM --------------video information
REM устанавливаем инкремент count для цикла 
SET count=1
REM ищем характеристику всех однотипных комплектующих
FOR /F "tokens=2 usebackq delims=[]=" %%a IN (`"wmic path win32_VideoController get Caption /value"`) DO (
set videoCaption!count!=%%a
set /a count=!count!+1
)
	
	REM устанавливаем инкремент count для цикла 
	SET count=1
	REM ищем характеристику всех однотипных комплектующих
	FOR /F "tokens=2 usebackq delims=[]=" %%a IN (`"wmic path win32_VideoController get AdapterRAM /value"`) DO (
	set videoRam!count!=%%a
	set /a count=!count!+1
	)


	rem Делаем одну большую строку
	set /a count=!count!-1
	set "allvideo="
	for /L %%B in (1,1,!count!) do (
		rem Обрезаем у переменных окончаение строк (перевод строки)
		set D1=Name=!videoCaption%%B:~0,-1!
		set D2=RAM=!videoRam%%B:~0,-10! GB
		set D2=!D2: =!
		set "D4= -- "
		set allvideo=!allvideo!!D1!!D4!!D2!!D4!
	)
REM --------------video information	
		
		REM информация по имени компьютера, домену и пользователя
		set pcName2="%pcName2%"
		set pcDomain2="%pcDomain2%"
		set pcUser2="%pcUser2%"
		REM информация по установленной ОЗУ
		set pcTotalMem2="%pcTotalMem2%"
		REM информация по операционной системе
		set osCaption2="%osCaption2%"
		set osArch2="%osArch2%"
		set osRegUser2="%osRegUser2%"
		set osSerial2="%osSerial2%"
		REM информация по материнской плате
		set boardManufacturer21="%boardManufacturer21%"
		set boardProduct2="%boardProduct2%"
		set boardSerial2="%boardSerial2%"
		REM информация по процессору
		set cpuName2="%cpuName2%"
		set cpuSoket2="%cpuSoket2%"
		REM информация по дискам и видеокартам
		set drive="%alldrive%"
		set video="%allvideo%"
		
		rem Вывод строки запуска, для самопроверки
		rem echo "wmic /user:domain\administrator /password:AdministratorPass /node:192.168.1.1 process call create 'cmd.exe /c "start php.exe C:\MyShare\addToMySql.php %pcName2% %pcDomain2% %pcUser2% %pcTotalMem2% %osCaption2% %osArch2% %osRegUser2% %osSerial2% %boardManufacturer21% %boardProduct2% %boardSerial2% %cpuName2% %cpuSoket2% %drive% %video%"'"

rem Создаем строку запуска скрипта на сервере	
 wmic /user:domain\administrator /password:AdministratorPass /node:192.168.1.1 process call create 'cmd.exe /c "start php.exe C:\MyShare\addToMySql.php %pcName2% %pcDomain2% %pcUser2% %pcTotalMem2% %osCaption2% %osArch2% %osRegUser2% %osSerial2% %boardManufacturer21% %boardProduct2% %boardSerial2% %cpuName2% %cpuSoket2% %drive% %video%"'
