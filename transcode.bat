::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: CHANGE LOG
:::::::::::::::::::::::::

:: v0.8.9
:: - ToDo: auto polling free space to continue, while also checking for concurrent encodings
:: - ToDo: check for correct video duration: cf. Video duration: 'Beginnings' HMS
:: - ToDo: suggest path if there is allready one selected in the Temp folder settings
:: - ToDo: ask to remove the original
:: - ToDo: add fps in the first info screen (with length etc.)
:: - ToDo: fix syntax error on audio and video passthrough free space check
:: - ToDo: remove handbrake tmp files on startup if no handbrake is running
:: - ToDo: check if there is allready an encoding on the same file busy
:: - ToDo: ...
::
:: v0.8.8.8
:: - moved path definitions to transcode_settings.ini file
:: - checks for required executables
::
:: v0.8.8.7
:: - adjusted for HandBrakeCLI v1.0.7
:: - renamed mkv_transcode_settings.ini to transcode_settings.ini
::
:: v0.8.8.6
:: - batch now shows as title the file name
::
:: v0.8.8.5
:: - tmp_sample_bitrates_log filename now made per resolution.
:: - added 448kbit/s for AC3 transcoding
:: - demuxing given higher priority
:: - handbrake analysis given higher priority 
::
:: v0.8.8.4
:: - override not-enough-space message
::
:: v0.8.8.3
:: - video stream copy is now possible (option [P]ass-through
:: - default timerbased options disabled
:: - no more race conditions on the vbs script: name is a random generated number
::
:: v0.8.8.2
:: - dts (DTS), 48000 Hz, stereo, fltp, 1536 kb/s to 224 AC3 conversion matrix added
::
:: v0.8.8.1
:: - added Bluray-8P-SL size
::
:: v0.8.8
:: - added priority option to :HANDBRAKE function
:: - mkvmerge priority levels set slightly higher
:: - unnecessary audio and rest data is removed to conserve space
:: - empty space is checked prior the encode start.
:: - bug where log wasn't moved fixed through session_settings_file 
:: 
:: v0.8.7
:: - added user choice for destination directory
:: - added mkv_transcode_settings.ini file
::
:: v0.8.6
:: - compatible with handbrake v0.9.9 and "--h264-level" option: lower handbrakecli versions are not supported!
::
:: v0.8.3
:: - fixed bug with stream selection when there is no stream name.
:: - Denoise: off - Decomb: on printing bug fixed.
::
:: v0.8.3
:: - fixed auto resolution to choose correct number of ref frames based on source resolution
::
:: v0.8.2
:: - decomb encoding option added
:: - decomb option added in analysis
:: - analysis code put into a function
::
:: v0.8.1
:: - added decomb option for testing
::
:: v0.8.0
:: - added 1/3 of a BluRay50 size
:: - fixed bug that overwrites the original when demuxing without subs
::
:: v0.7.9
:: - started using tee from UnxUtils
:: - quick denoising option during analysis, based on a little statistical analysis
::
:: v0.7.8
:: - ffmpeg now uses some default options %ffmpeg_options%
:: - cleanup temporary disabled due to casual Error 1450 
::
:: v0.7.7
:: - sample duration reduced to 5 sec from 10 sec
:: - extra error print when final mkvmerge fails
::
:: v0.7.6
:: - added denoising options in extended analysis
::
:: v0.7.5
:: - conversion_map improved
:: - bug fixed where channels wasn't resolved in conversion_map
::
:: v0.7.4
:: - bug fixed where extended analysis on 1280pixels width didn't try DVD resolution
:: - removed auto-size calculation
:: - audio track encoding shows a bit more info
::
:: v0.7.3
:: - the code for neglecting audio and/or subs is now put in 1 function
::
:: v0.7.2
:: - extended analysis makes predictions on size based conversion_map
:: - make_samples funtion can now work silently
:: - added a few smaller auto sizes
:: - evaluate function now works with setlocal 1033 and doesn't replace "," with "."
:: - prints filename and versions when starting up
::
:: v0.7.1
:: - extended analysis option
:: - large procedure for auto size calculation split into functions
::
:: v0.7
:: - handbrakecli is now run from within a function
:: - evaluate.bat is now a function
::
:: v0.6.3
:: - SETLOCAL EnableDelayedExpansion standard on
:: - MP3 max quality VBR encoding added
:: - filter for ffmpeg and mkvmerge because of wtee added
::
:: v0.6.2
:: - use ffmpeg for demuxing
::
:: v0.6.1
:: - added sound processing per track
::
:: v0.6.0
:: - added logging: batch calls itself and pipes all through wtee
::
:: v0.5.7
:: - new tmp folder
:: - orig_rest_size is now 0 if non existant
:: - sample pics currently disabled - ffmpeg crashes sometimes
:: - generates unique final name for mkv if one allready exists
:: - removed vedit
:: - added wtee
::
:: v0.5.6
:: - picture sample names and seek changed
::
:: v0.5.5
:: - added checks for neglected audio and subtitle tracks
:: - bug resolved: doesn't anymore stop when there are no subtitles
:: - added timestamps
::
:: v0.5.4
:: - resolved crashing when there is no tmp_orig_rest or tmp_orig_audio
::
:: v0.5.3
:: - added default AC-3 bitrate (ffmpeg choses)
:: - added denoise option
::
:: v0.5.2
:: - end comparison of original and transcode added
:: - now makes sample pictures of original and transcode
::
:: v0.5.1
:: - track elimination happens now during demuxing
:: - simple error (10%) for autosize bitrate prediction introduced
::
:: v0.5
:: - audio conversion support
::
:: v0.4.3
:: - changed samples from 3 to 6
:: - decreased sample length from 20s to 10s
::
:: v0.4.2
:: - added second way to determine sample bitrate
:: - added simple mkvinfo error handling
:: - double duration calculation removed
::
:: v0.4.1
:: - auto size RF lowered to 20 because of visible color glitches in samples
:: - added simple error handling to handbrakecli
:: - DVD resolution is now --maxWidth 720 instead of --width 720
::
:: v0.4
:: - added auto size option based on bitrate predicted by RF 21
::
:: v0.3.7
:: - added extra sizes: 1.37GiB & 2.05GiB
::
:: v0.3.6
:: - exclude tracks from the final output
:: - added simple error handling for mkvnixtools
::
:: v0.3.5
:: - black & white encoding
::
:: v0.3.4
:: - added 700MiB size
::
:: v0.3.3
:: - added affinity
::
:: v0.3.2
:: - custom crop now supports 4 input values
::
:: v0.3.1
:: - added custom crop
::
:: v0.3
:: - added choice: preset
:: - added choice for quality based encoding
:: - added suffix based on selected settings
::
:: v0.2.6
:: - now choses handbrakeCLI based on x86 or x64
::
:: v0.2.5
:: - now works with mkvnixtool v5.5.0
:: - option for bitrate added
::
:: v0.2.4
:: - added choice: resolution, targetsize
::
:: v0.2.3
:: - added choice: crop
:: - added error handling in case there is no input argument
::
:: v0.2.2
:: - now works with drag/drop
::
:: v0.1
:: - first version
::
:: TODO: Improve logging
:: BUG: Because under wtee all is local, the copied log has not the right (possible) suffix number
:: BUG: @ECHO Encode settings code: %suffix% >> %log_file% --> wtee is accessing the log, so you can't write in it. And after it's done, all the vars are deleted, so this can not be used.
:: BUG: some redirects are added to handbrakecli and mkvmerge because wtee has issues showing progress
:: TODO: Work with avi
:: TODO: Also show the size if -% introduces an other size. 
:: TODO: Warning: matroska_reader: Could not keep the track UID 1 because it is already allocated for the new file. Waarschijnlijk omdat subs mij audio en rest steken, etc.
:: TODO: Temporarily disabled clean up to fix: Error: Could not write to the output file: 1450 (Insufficient system resources exist to complete the requested service.) Error: 0 -- This is currently worked around by first trying to mux the file to local dir in %destination_folder%.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@IF "%~1" EQU "" GOTO ERROR_NO_ARG
@IF NOT EXIST %1 GOTO ERROR_BAD_ARG

@SET input="%~1"
@SET input_name=%~n1

@TITLE %input_name%

:: Checking user settings file. This file contains various options
:: in form of key-value pairs. For example:
:: tmp_folder=C:\Transcode\tmp
:: tee_path=C:\Transcode\tools\unxutils\wbin\tee.exe
:: handbrake_folder=C:\Transcode\tools\handbrake\program\x64
:: ffmpeg_folder=C:\Transcode\tools\ffmpeg\program\bin
:: mkvtoolnix_folder=C:\Transcode\tools\mkvtoolnix\program
:: destinationpath=C:\Transcode
@SET "user_settings_file=%~dp0transcode_settings.ini"
@IF NOT EXIST "%user_settings_file%" @( 
	@ECHO Cannot find transcode_settings.ini file. Exiting...
	@GOTO QUIT
)

@CALL :GET_SETTING tmp_folder %user_settings_file% FALSE
@IF NOT EXIST "%tmp_folder%" @MKDIR "%tmp_folder%"
@SET tmp_folder=%tmp_folder%\%input_name%
@IF NOT EXIST "%tmp_folder%" @MKDIR "%tmp_folder%"

@SET "session_settings_file=%tmp_folder%\session_settings.ini"
@SET log_file="%tmp_folder%\%input_name%.encode.log"

:: Logging mechanism is activated here.
:: The batch checks whether 2501 is put as second arg. If not, it
:: re-executes with piping to wtee.
:: One can omit this (i.e. logging) by putting 2501 as the second argument.
:: Using wtee makes all the variables in the called batch local!
:: @IF "%2" NEQ "2501" PowerShell -command "&{cmd /c %0 %1 2501 | Tee-Object '%log_file%'}" & GOTO MOVE_LOG REM Not working - pause doesn't show up.
@CALL :GET_SETTING tee_path %user_settings_file% FALSE
@IF NOT EXIST "%tee_path%" @ECHO Cannot find %tee_path%. Exiting... & GOTO QUIT
@IF "%2" NEQ "2501" @CALL %0 %1 2501 | %tee_path% %log_file% & GOTO MOVE_LOG

::@SETLOCAL
::@SETLOCAL EnableExtensions
@SETLOCAL EnableDelayedExpansion

@ECHO.
:: Setting up PATH variables
@CALL :GET_SETTING handbrake_folder %user_settings_file% FALSE
@CALL :GET_SETTING ffmpeg_folder %user_settings_file% FALSE
@CALL :GET_SETTING mkvtoolnix_folder %user_settings_file% FALSE
@SET path=%path%;%handbrake_folder%;%ffmpeg_folder%;%mkvtoolnix_folder%;%~dp0

:: Check executables
@CALL :FIND_IN_PATH HandBrakeCLI.exe
@IF %ERRORLEVEL% NEQ 0 @ECHO Cannot find HandBrakeCLI.exe. Exiting... & GOTO QUIT
@CALL :FIND_IN_PATH ffmpeg.exe 
@IF %ERRORLEVEL% NEQ 0 @ECHO Cannot find ffmpeg.exe. Exiting... & GOTO QUIT
@CALL :FIND_IN_PATH mkvinfo.exe 
@IF %ERRORLEVEL% NEQ 0 @ECHO Cannot find mkvinfo.exe. Exiting... & GOTO QUIT

@SET filter=FINDSTR /I /V "progress: size= configuration: copyright libav libsw libpost [q]"
@SET ffmpeg_options=-nostats -y -analyzeduration 100M -probesize 100M

:: random number 0 =< %RANDOM% < 32767. The addition makes sure there are always 5 digits in the number.
@SET /a random_number=%RANDOM% + 10000

@SET tmp_orig_video="%tmp_folder%\tmp_orig_video.mkv"
@SET tmp_orig_audio="%tmp_folder%\tmp_orig_audio.mkv"
@SET tmp_orig_rest="%tmp_folder%\tmp_orig_rest.mkv"
@SET tmp_enc_audio="%tmp_folder%\tmp_enc_audio.mkv"
@SET tmp_enc_audio_and_rest="%tmp_folder%\tmp_enc_audio_and_rest.mkv"
@SET tmp_enc_video="%tmp_folder%\tmp_enc_video.mkv"
@SET tmp_sample_activity_log="%tmp_folder%\tmp_sample_activity_log.txt"
@SET tmp_orig_mkvinfo="%tmp_folder%\MKVINFO_ORIGINAL.txt"
@SET tmp_enc_mkvinfo="%tmp_folder%\MKVINFO_ENCODE.txt"
@SET tmp_orig_identify_ffmpeg="%tmp_folder%\FFMPEG_ID_ORIGINAL.txt"
@SET tmp_orig_identify_handbrake="%tmp_folder%\HANDBRAKE_SCAN_ORIGINAL.txt"
@SET tmp_pre-enc_identify_ffmpeg="%tmp_folder%\FFMPEG_ID_PRE-ENCODE.txt"
@SET tmp_identify="%tmp_folder%\tmp_mkvmerge_identity.txt"

@SET CD-28P80min=26214400
@SET CD-14P80min=52428800
@SET CD-7P80min=104857600
@SET CD-2H80min=183500000
@SET CD-H80min=367000000
@SET CD-80min=734000000
@SET CD-80minX2=1468000000
@SET CD-80minX3=2202000000
@SET DVD-TDL=2845000000
@SET CD-80minX4=2936000000
@SET Bluray-8P-SL=3125000000
@SET DVD-SL=4690000000
@SET DVD-DL=8535000000
@SET Bluray-HSL=12505000000
@SET Bluray-TDL=16664473110
@SET Bluray-SL=25000000000
@SET Bluray-DL=50000000000

@SET cmd_resolution_1080=--loose-anamorphic --width 1920 --maxHeight 1080
@SET cmd_resolution_720=--loose-anamorphic --width 1280 --maxHeight 720
@SET cmd_resolution_576=--loose-anamorphic --maxWidth 720 --maxHeight 576
@SET cmd_resolution_auto=--auto-anamorphic

:: Conversionmap MUST be set with DisabledDelayedExpansion!
:: For possible !keys!, see :MAKE_AUDIO_MAP
:: Here are some: bitrate, sampleres, channels, frequency, codec
:: You can not downmix decently from 5.1 to 2 with ffmpeg (!!) so don't use it
@SETLOCAL DisableDelayedExpansion
@SET conversion_map=^
#InStr(1,""!codec!"",""DTS"",1)^>0 AND InStr(1,""!channels!"",""5.1"",1)^>0 AND !bitrate!^>^=768:codec--ac3;bitrate--640#^
#InStr(1,""!codec!"",""DTS"",1)^>0 AND InStr(1,""!channels!"",""5.1"",1)^>0 AND !bitrate!^>^=768:codec--ac3;bitrate--448#^
#InStr(1,""!codec!"",""AC3"",1)^>0 AND InStr(1,""!channels!"",""5.1"",1)^>0 AND !bitrate!^=640:codec--ac3;bitrate--448#^
#InStr(1,""!codec!"",""FLAC"",1)^>0 AND InStr(1,""!channels!"",""5.1"",1)^>0:codec--ac3;bitrate--640#^
#InStr(1,""!codec!"",""FLAC"",1)^>0 AND InStr(1,""!channels!"",""5.1"",1)^>0:codec--ac3;bitrate--448#^
#( InStr(1,""!codec!"",""DTS"",1)^>0 OR InStr(1,""!codec!"",""FLAC"",1)^>0 ) AND InStr(1,""!channels!"",""stereo"",1)^>0:codec--ac3;bitrate--224#^
#InStr(1,""!codec!"",""PCM"",1)^>0 AND ( InStr(1,""!channels!"",""mono"",1)^>0 OR InStr(1,""!channels!"",""stereo"",1)^>0 ) AND !bitrate!^>=1152:codec--mp3;bitrate--160#
@SETLOCAL EnableDelayedExpansion

@SET quality_based_encoding_rf=20
@SET auto_size_rf=20
@SET nr_samples_for_autosize=6
@SET sample_duration_sec=10
@SET percentage_autosize_bitrate_error=15
@SET nr_picture_samples=5

@CALL :EVALUATE "chr(8)"
@SET bs_char=%result%
:: The following three lines escape a new line and put it in a variable for later.
:: The 2 following empty lines are important!
@SET newline=^


@ECHO.
@ECHO Version: %~n0
@ECHO ---------------------------------------------------------------------------
@ECHO Started working on %input_name% 
@ECHO Timestamp: %date% %time%
@ECHO ---------------------------------------------------------------------------

@ECHO.
@CHOICE /C "1234" /N /T 0 /D 4 /M "# cores to work with: 1, 2, 3, 4?"
@SET choice_affinity=%ERRORLEVEL%
@IF %choice_affinity% EQU 1 SET affinity=1
@IF %choice_affinity% EQU 2 SET affinity=3
@IF %choice_affinity% EQU 3 SET affinity=7
@IF %choice_affinity% EQU 4 SET affinity=F 

@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Analysing container...
@ECHO ---------------------------------------------------------------------------

@mkvinfo --ui-language English %input% > %tmp_orig_mkvinfo%
@IF %ERRORLEVEL% NEQ 0 GOTO ERROR_MKVINFO

@CALL :HANDBRAKE %input%, "", "" , "", "--previews 30:0 --scan", "NORMAL" 1>&2 2> %tmp_orig_identify_handbrake%

:: Calculate size
@FOR /F "tokens=*" %%A IN (%input%) DO @SET input_size=%%~zA
@CALL :EVALUATE "FormatNumber(%input_size%/1024/1024)"
@ECHO File size: %result% MiB

:: Calculate duration
@FOR /F "tokens=4" %%A IN ('FIND "Duration:" ^< %tmp_orig_mkvinfo%') DO @SET duration_sec=%%A
@IF "%duration_sec%"=="" GOTO ERROR_NO_DURATION
@SET duration_sec=%duration_sec:~0,-1%

:: Show duration (duration_sec isn't used because it is in seconds, this one is in HMS)
:: @FOR /F "tokens=2 delims=, " %%D IN ('TYPE %tmp_orig_identify_handbrake% ^|FIND /I "  Duration: "') DO @ECHO Video duration: %%D HMS
@FOR /F "tokens=2 delims=()" %%D IN ('TYPE %tmp_orig_mkvinfo% ^| FIND /I "| + Duration:"') DO @ECHO Video duration: %%D HMS

:: Show resolution:
@FOR /F "tokens=5 delims= " %%W IN ('TYPE %tmp_orig_mkvinfo% ^| FIND /I "|   + Pixel width:"') DO @SET orig_pixel_width=%%W
@CALL :EVALUATE "IsNumeric(%orig_pixel_width%)"
@IF %result% NEQ True @ECHO %orig_pixel_width% is not numeric. & GOTO QUIT 
@FOR /F "tokens=5 delims= " %%H IN ('TYPE %tmp_orig_mkvinfo% ^| FIND /I "|   + Pixel height:"') DO @SET orig_pixel_height=%%H
@CALL :EVALUATE "IsNumeric(%orig_pixel_height%)"
@IF %result% NEQ True @ECHO %orig_pixel_height% is not numeric. & GOTO QUIT 
@ECHO Resolution: %orig_pixel_width%x%orig_pixel_height%

:: Show auto crop values
@FOR /F "tokens=3" %%C IN ('TYPE %tmp_orig_identify_handbrake% ^| FIND /I "autocrop:"') DO @SET "autocrop=%%C" & SET autocrop=!autocrop:/=:!
@ECHO Auto crop: %autocrop%

@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Setting destination folder...
@ECHO ---------------------------------------------------------------------------

:: Here we show all the destination folders from the user settings file and let hims specify one or write a new one
@SET /A destpathcounter=0
@ECHO.
@FOR /F "tokens=2 delims==" %%S IN ('TYPE %user_settings_file% ^| FIND /I "destinationpath="') DO @(
	@IF EXIST %%S @(
		@ECHO   [!destpathcounter!] %%S
		@SET "destpathchoice!destpathcounter!=%%S"
		@SET /A destpathcounter+=1
	)
)
@ECHO.
	:SET_DESTINATION_FOLDER
@SET /P destination_folder=Destination (number or path): 

:: Check first if a number is given...
@ECHO %destination_folder%|FINDSTR /R "[^0-9]" > NUL
@IF %errorlevel% EQU 0 @( REM contains non-numeric characters, so it is a path
	@IF NOT EXIST "%destination_folder%" @( 
		@ECHO Specified folder doesn't exist. Try again...
		@ECHO.
		@GOTO SET_DESTINATION_FOLDER
	) ELSE @( REM Folder exists: should be set in user settings file if not allready there, and script continued.
		@FOR /F %%C IN ('TYPE %user_settings_file% ^| FIND /I /C "%destination_folder%"') DO @(
			@IF "%%C" EQU "0" @( REM %destination_folder% not found in user settings file, so it can be added
				@ECHO destinationpath=%destination_folder%>> "%user_settings_file%"
			)
		)
	)
) ELSE @( REM %destination_folder% contains a number
	@IF NOT DEFINED destpathchoice%destination_folder% @( 
		@ECHO Invalid number. Try again.
		@GOTO SET_DESTINATION_FOLDER
	) ELSE @(
		@SET destination_folder=!destpathchoice%destination_folder%!
	)
)

@ECHO Destination folder chosen: %destination_folder%

:: store the variable in session file for use later for moving the log.
@SET destination_folder> "%session_settings_file%" 

@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Choosing audio and subtitle tracks...
@ECHO ---------------------------------------------------------------------------

:: Show stream info
@ECHO.
@ffmpeg %ffmpeg_options% -i %input% 2>&1 | @FINDSTR /I /R "#0[.:]" > %tmp_orig_identify_ffmpeg%
@IF %ERRORLEVEL% NEQ 0 GOTO QUIT
@TYPE %tmp_orig_identify_ffmpeg% | @FINDSTR /I /R "#0[:].*Audio: Subtitle:"

@COPY /Y %tmp_orig_identify_ffmpeg% %tmp_pre-enc_identify_ffmpeg% > NUL

:: Choose audio tracks to neglect
@ECHO.
@SET /P choice_naudio=Neglect audio streams (comma delimited)?: 
@CALL :NEGLECT_TRACK_CMDLINE "Audio", "%choice_naudio%", str_neglect_audio_tracks, error_code
@IF "%error_code%" NEQ "0" @ECHO Aborting... & @GOTO CLEAN_UP

:: Check whether there are any more tracks
@FOR /F %%C IN ('TYPE %tmp_pre-enc_identify_ffmpeg% ^| FIND /I /C "Audio:"') DO @(
	@IF "%%C" EQU "0" @( 
		@ECHO No audio tracks left to mux... Aborting. & @GOTO CLEAN_UP 
	)
)

:: Choose subtitle tracks to neglect
@ECHO.
@SET /P choice_nsubtitle=Neglect subtitle streams (comma delimited)?: 
@CALL :NEGLECT_TRACK_CMDLINE "Subtitle", "%choice_nsubtitle%", str_neglect_subtitle_tracks, error_code
@IF "%error_code%" NEQ "0" @ECHO Aborting... & @GOTO CLEAN_UP

:: Check whether there are any more tracks --> if not, set var to inform there will be no "rest"
@FOR /F %%C IN ('TYPE %tmp_pre-enc_identify_ffmpeg% ^| FIND /I /C "Subtitle:"') DO @( 
	@IF "%%C" NEQ "0" @(
		SET there_exist_subs=true
	)
)

:: Now make audio map
@CALL :MAKE_AUDIO_MAP audio_map, %tmp_pre-enc_identify_ffmpeg%
::@ECHO %audio_map%

:: Get number of audio streams
@CALL :SEEK_IN_MAP streams, "!audio_map!", nr_audio_streams
@SET /A nr_max_stream=%nr_audio_streams%-1

@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Setting general options...
@ECHO ---------------------------------------------------------------------------

:: Select x264 preset
@ECHO.
@CHOICE /C "PVSFU" /N /M "x264 preset: [P]lacebo, [V]eryslow, [S]low, [F]ast, [U]ltrafast?"
@SET x-preset=%ERRORLEVEL%
@IF %x-preset% EQU 1 SET useropt=%useropt% --x264-preset placebo & SET suffix=%suffix%-placebo
@IF %x-preset% EQU 2 SET useropt=%useropt% --x264-preset veryslow & SET suffix=%suffix%-veryslow
@IF %x-preset% EQU 3 SET useropt=%useropt% --x264-preset slow & SET suffix=%suffix%-slow
@IF %x-preset% EQU 4 SET useropt=%useropt% --x264-preset fast & SET suffix=%suffix%-fast
@IF %x-preset% EQU 5 SET useropt=%useropt% --x264-preset ultrafast & SET suffix=%suffix%-ultrafast

:: Cropping: Top:Bottom:Left:Right
@ECHO.
@CHOICE /C "ANC" /N /M "Crop [A]uto (%autocrop%), [N]one, [C]ustom?"
@SET crop=%ERRORLEVEL%
@IF %crop% EQU 1 SET useropt=%useropt% --crop %autocrop% & SET suffix=%suffix%-A%autocrop::=;%Crop
@IF %crop% EQU 2 SET useropt=%useropt% --crop 0:0:0:0 & SET suffix=%suffix%-NoCrop
@IF %crop% EQU 3 (
@SET /P crop_top=Top:
@SET /P crop_bottom=Bottom:
@SET /P crop_left=Left:
@SET /P crop_right=Right:
@SET useropt=%useropt% --crop !crop_top!:!crop_bottom!:!crop_left!:!crop_right! 
@SET suffix=%suffix%-C!crop_top!;!crop_bottom!;!crop_left!;!crop_right!Crop
)

:: Source grayscale?
@ECHO.
@CHOICE /C "YN" /N /M "Movie black & white? [Y/N]"
@SET bw_movie=%ERRORLEVEL%
@IF %bw_movie% EQU 1 SET useropt=%useropt% --grayscale & SET suffix=%suffix%-bw
@IF %bw_movie% EQU 2 ECHO Do Nothing > NUL

:: Shall we do an extended analysis?
@ECHO.
@CHOICE /C "YN" /N /M "Extended analysis? [Y/N]"
@SET choice_ext_analysis=%ERRORLEVEL%
@IF %choice_ext_analysis% EQU 1 ECHO Do Nothing > NUL
@IF %choice_ext_analysis% EQU 2 GOTO SKIP_EXTENDED_ANALYSIS

:: What kind of denoise analysis shall we do?
@CHOICE /C "NQF" /N /M " - Denoise analysis: [N]one, [Q]uick or [F]ull?"
@SET choice_denoise_analysis=%ERRORLEVEL%
@IF %choice_denoise_analysis% EQU 1 ECHO Do Nothing > NUL
@IF %choice_denoise_analysis% EQU 2 ECHO Do Nothing > NUL
@IF %choice_denoise_analysis% EQU 3 ECHO Do Nothing > NUL

:: Decomb analysis?
@CHOICE /C "NY" /N /M " - Decomb analysis: [Y/N]?"
@SET choice_decomb_analysis=%ERRORLEVEL%
@IF %choice_decomb_analysis% EQU 1 ECHO Do Nothing > NUL
@IF %choice_decomb_analysis% EQU 2 ECHO Do Nothing > NUL

@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Extended analysis...
@ECHO ---------------------------------------------------------------------------

:: Here we update the audio_map with new possible encodings through conversion_map.
:: In the audio_map, the original track is always designated as tracknr.0
:: Tracknr.x, where x > 0, are all the other possibilities for encoding.
@FOR /L %%T IN (0,1,%nr_max_stream%) DO (
	@SET conv_nr=0
	@CALL :SEEK_IN_MAP codec%%T.0, "!audio_map!", codec
	@CALL :SEEK_IN_MAP bitrate%%T.0, "!audio_map!", bitrate
	@CALL :SEEK_IN_MAP channels%%T.0, "!audio_map!", channels
	@CALL :SEEK_IN_MAP frequency%%T.0, "!audio_map!", frequency
	@CALL :SEEK_IN_MAP sampleres%%T.0, "!audio_map!", sampleres
	@FOR /F "tokens=1 delims=#" %%i in ("%conversion_map:#=!newline!%") do @(
		@CALL :AUDIO_MAP_UPDATE "%%i", %%T, conv_nr, audio_map
	)
	@SET audio_map=!audio_map!;conversions%%T--!conv_nr!
)

:: Now we make a map for the possible conversions
:: This map is put into %scramble%
CALL :SCRAMBLE
::@ECHO "SCRAMBLE: %scramble%"

:: Test original pixel-by-pixel compression
@ECHO.
@ECHO Analysis on original (%orig_pixel_width%x%orig_pixel_height%) resolution.
@ECHO -----------------------
@CALL :PRINT_ANALYSIS "%orig_pixel_height%p(source_res)", "%cmd_resolution_auto%"

:: There is no valid case in which 1080p compression should be tried.
:: @CALL :MAKE_SAMPLES %input%, "tmp_video_sample_1080p", "%useropt% %cmd_resolution_1080%", avg_bitrate

:: Test 720p compression: (1) if source is HD 1080 --> try subsample
@CALL :EVALUATE "%orig_pixel_height%>720 OR %orig_pixel_width%>1280"
@IF %result% EQU True @(
	@ECHO.
	@ECHO Analysis on subsampled HD 720p resolution.
	@ECHO -----------------------
	@CALL :PRINT_ANALYSIS "720p", "%cmd_resolution_720%"
)

:: Test DVD compression: (1) if source is HD --> try subsample
@CALL :EVALUATE "%orig_pixel_height%>576 OR %orig_pixel_width%>720"
@IF %result% EQU True @(
	@ECHO.
	@ECHO Analysis on subsampled DVD resolution
	@ECHO -----------------------
	@CALL :PRINT_ANALYSIS "576p", "%cmd_resolution_576%"
)

@ECHO.
@PAUSE

	:SKIP_EXTENDED_ANALYSIS

@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Setting options...
@ECHO ---------------------------------------------------------------------------

@ECHO.
@CHOICE /C "SQBP" /N /M "Video bitrate: [S]ize, [Q]uality, [B]itrate, [P]ass-through?"
@SET choice_bitrate=%ERRORLEVEL%
@IF %choice_bitrate% EQU 1 @ECHO Do Nothing > NUL
@IF %choice_bitrate% EQU 2 @( 
	SET bitrate_control=--quality %quality_based_encoding_rf% & SET suffix=q20
	@CALL :EVALUATE "%input_size%*0.4"
	@SET predicted_size=!result!
)
@IF %choice_bitrate% EQU 3 @( 
	SET /P new_bitrate=New Bitrate: 
	IF "!new_bitrate!" NEQ "" @( 
		ECHO New bitrate set to !new_bitrate! kbit/s & SET suffix=b!new_bitrate!
	) ELSE @( 
		ECHO No bitrate set... aborting. & @GOTO CLEAN_UP 
	)
	@CALL :PREDICT_SIZE "%duration_sec%", "!new_bitrate!", 640, 0, "predicted_size"
)
@IF %choice_bitrate% EQU 4 SET video_passthrough=yes
::@IF %choice_bitrate% EQU 4 SET suffix=AutoSize 

:: Sound choices
:: -map 0:!audio_track_nr! is used for the %tmp_orig_audio%, which has not necessarily the same ID's as the %input%
@ECHO.
@FOR /L %%T IN (0,1,%nr_max_stream%) DO @(
	@CALL :SEEK_IN_MAP codec%%T.0, "%audio_map%", codec
	@CALL :SEEK_IN_MAP bitrate%%T.0, "%audio_map%", bitrate
	@CHOICE /C "PADM" /N /M "Audio track number %%T [!codec! ^@!bitrate!kbit/s]:!newline!	--^> [P]ass-through, [A]C-3 640kb/s, AC-3 [D]efault, [M]P3?"
	@SET choice_audio=!ERRORLEVEL!
	@IF !choice_audio! EQU 1 SET audio_enc=!audio_enc! -map 0:a:%%T -c:a:%%T copy & SET suffix=!suffix!-A%%Tpt
	@IF !choice_audio! EQU 2 SET audio_enc=!audio_enc! -map 0:a:%%T -c:a:%%T ac3 -b:a:%%T 640k & SET suffix=!suffix!-A%%Tac3Max
	@IF !choice_audio! EQU 3 SET audio_enc=!audio_enc! -map 0:a:%%T -c:a:%%T ac3 & SET suffix=!suffix!-A%%Tac3Def
	@IF !choice_audio! EQU 4 SET audio_enc=!audio_enc! -map 0:a:%%T -c:a:%%T libmp3lame -q:a:%%T 0 -compression_level 0 -id3v2_version 3 & SET suffix=!suffix!-A%%Tmp3
)

@IF DEFINED video_passthrough GOTO SKIP_OPTIONS_SET
@ECHO.
@CHOICE /C "A17D" /N /M "Resolution [A]uto, [1]080, [7]20, [D]VD?"
@SET res=%ERRORLEVEL%
@IF %res% EQU 1 SET useropt=%useropt% %cmd_resolution_auto% & SET suffix=%suffix%-ResStrict
@IF %res% EQU 2 SET useropt=%useropt% %cmd_resolution_1080% & SET suffix=%suffix%-ResL1080p
@IF %res% EQU 3 SET useropt=%useropt% %cmd_resolution_720% & SET suffix=%suffix%-ResL720p
@IF %res% EQU 4 SET useropt=%useropt% %cmd_resolution_576% & SET suffix=%suffix%-ResL576p

@ECHO.
@CHOICE /C "NWMS" /N /M "Noise reduction [N]one, [W]eak, [M]edium, [S]trong?"
@SET denoise=%ERRORLEVEL%
@IF %denoise% EQU 1 @ECHO Do Nothing > NUL
@IF %denoise% EQU 2 SET useropt=%useropt% --denoise=weak & SET suffix=%suffix%-denW
@IF %denoise% EQU 3 SET useropt=%useropt% --denoise=medium & SET suffix=%suffix%-denM
@IF %denoise% EQU 4 SET useropt=%useropt% --denoise=strong & SET suffix=%suffix%-denS

@ECHO.
@CHOICE /C "NY" /N /M "Decomb [Y]es or [N]o?"
@SET choice_decomb=%ERRORLEVEL%
@IF %choice_decomb% EQU 1 @ECHO Do Nothing > NUL
@IF %choice_decomb% EQU 2 SET useropt=%useropt% --decomb & SET suffix=%suffix%-decomb

@IF %choice_bitrate% NEQ 1 GOTO SKIP_SIZE_SET
@ECHO.
@CHOICE /C "123456789A" /N /M "Targetsize 700MiB [1], 1.37GiB [2], 2.05GiB [3], 3,125GiB [4], 4.37GiB [5], 7.95GiB [6], 12.5GB [7], 15.5GB [8]?"
@SET size=%ERRORLEVEL%
@IF %size% EQU 1 SET targetsize=%CD-80min%
@IF %size% EQU 2 SET targetsize=%CD-80minX2%
@IF %size% EQU 3 SET targetsize=%CD-80minX3%
@IF %size% EQU 4 SET targetsize=%Bluray-8P-SL%
@IF %size% EQU 5 SET targetsize=%DVD-SL%
@IF %size% EQU 6 SET targetsize=%DVD-DL%
@IF %size% EQU 7 SET targetsize=%Bluray-HSL%
@IF %size% EQU 8 SET targetsize=%Bluray-TDL%
@IF %size% EQU 9 SET targetsize=%Bluray-SL%
@IF %size% EQU A SET targetsize=%Bluray-DL%
@SET predicted_size=%targetsize% 
	:SKIP_SIZE_SET
	:SKIP_OPTIONS_SET
	
@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Checking free space...
@ECHO ---------------------------------------------------------------------------
	
:: first we check whether there is enough space available in the tmp_folder to encode.
@CALL :ASSERT_FREE_SPACE "%input_size% + %predicted_size%", %tmp_folder:~0,1%
@IF %ERRORLEVEL% NEQ 0 ( GOTO CLEAN_UP ) ELSE ( ECHO. & ECHO Free space check passed on drive %tmp_folder:~0,1%. )
	
@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO De-muxing...
@ECHO ---------------------------------------------------------------------------

:: here we make tmp_orig_video, tmp_orig_audio, tmp_orig_rest which we use later on!
:: here we also substract the tracks that are to be excluded.

:: mkvextract doesn't seem to extract meta-data? Handbrake will not work with it's video stream.
:: mkvextract --ui-language English tracks %input% 0:%tmp_orig_video% 1:%tmp_orig_audio%

@IF "%there_exist_subs%" EQU "true" (
	@START /B /BELOWNORMAL /AFFINITY %affinity% /WAIT ffmpeg %ffmpeg_options% -i %input% -map 0:v -c:v copy %tmp_orig_video% -map 0:a -c:a copy %str_neglect_audio_tracks% %tmp_orig_audio% -map 0 -vn -an -c:s copy %str_neglect_subtitle_tracks% %tmp_orig_rest% 2>&1
) ELSE (
	@START /B /BELOWNORMAL /AFFINITY %affinity% /WAIT ffmpeg %ffmpeg_options% -i %input% -map 0:v -c:v copy %tmp_orig_video% -map 0:a -c:a copy %str_neglect_audio_tracks% %tmp_orig_audio% 2>&1 
)
@IF %ERRORLEVEL% NEQ 0 GOTO CLEAN_UP

:: storing sizes for printing later
@FOR /F "tokens=*" %%A IN (%tmp_orig_video%) DO @SET orig_video_size=%%~zA
@FOR /F "tokens=*" %%A IN (%tmp_orig_audio%) DO @SET orig_audio_size=%%~zA
@FOR /F "tokens=*" %%A IN (%tmp_orig_rest%) DO @SET orig_rest_size=%%~zA
@IF "%orig_rest_size%" EQU "" SET orig_rest_size=0

@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Transcoding audio...
@ECHO ---------------------------------------------------------------------------

:: first we check whether there is enough space available in the tmp_folder to transcode. 
:: for convenience I take the transcode to be at least as big as the original.
@CALL :ASSERT_FREE_SPACE "%orig_audio_size%", %tmp_folder:~0,1%
@If %ERRORLEVEL% NEQ 0 GOTO CLEAN_UP

:: ffmpeg outputs everything through stderr (2)
::@IF %audio_enc% EQU copy ECHO Passing audio through... & MOVE /Y %tmp_orig_audio% %tmp_enc_audio% > NUL
@START /B /LOW /AFFINITY %affinity% /WAIT ffmpeg %ffmpeg_options% -i %tmp_orig_audio% %audio_enc% %tmp_enc_audio% 2>&1 & @IF %ERRORLEVEL% NEQ 0 GOTO CLEAN_UP

:: remove original audio to conserve space
@IF EXIST %tmp_orig_audio% @del %tmp_orig_audio% & @ECHO. & @ECHO Original audio removed to conserve space.

:: for printing info later
@FOR /F "tokens=*" %%A IN (%tmp_enc_audio%) DO @SET enc_audio_size=%%~zA

@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Muxing audio with rest...
@ECHO ---------------------------------------------------------------------------

:: first we check whether there is enough space available in the tmp_folder to mux. 
@CALL :ASSERT_FREE_SPACE "%enc_audio_size%+%orig_rest_size%", %tmp_folder:~0,1%
@If %ERRORLEVEL% NEQ 0 GOTO CLEAN_UP

:: this is needed so one can calculate the bitrate of the video for a given size.
@IF "%there_exist_subs%" EQU "true" (
	@mkvmerge --priority lower --ui-language English -o %tmp_enc_audio_and_rest% %tmp_enc_audio% %tmp_orig_rest% | %filter%
	@IF %ERRORLEVEL% EQU 2 GOTO CLEAN_UP
) ELSE (
	@ECHO There is only audio...
	@MOVE %tmp_enc_audio% %tmp_enc_audio_and_rest% > NUL
)

:: needed for calculations
@FOR /F "tokens=*" %%A IN (%tmp_enc_audio_and_rest%) DO @SET enc_audio_and_rest_size=%%~zA

:: remove original rest and encoded audio to conserve space
@IF EXIST %tmp_enc_audio% @del %tmp_enc_audio% & @ECHO. & @ECHO Encoded audio removed to conserve space.
@IF EXIST %tmp_orig_rest% @del %tmp_orig_rest% & @ECHO Original subs removed to conserve space.

:: Bitrate calculation is ONLY done if there is already targetsize specified!
@IF "%targetsize%" EQU "" GOTO SKIP_BITRATE_CALCULATION
@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Starting bitrate calculation
@ECHO ---------------------------------------------------------------------------
:: kan ook gebruikt worden: FOR /F "usebackq" %%A IN ('%tmp_enc_audio_and_rest%') DO set size=%%~zA
:: See here: http://stackoverflow.com/questions/1199645/how-can-i-check-the-size-of-a-file-in-a-windows-batch-script

:: calculate original video bitrate, needed to calculate the new bitrate:
@CALL :EVALUATE "%orig_video_size%*8/%duration_sec%/1000"
@SET orig_video_bitrate=%result%

:: calculate new video-only size
@CALL :EVALUATE "%targetsize%-%enc_audio_and_rest_size%"
@SET expected_video_size=%result%

:: ratio between old and new video-only sizes = ratio between new and old bitrate --> calculate new bitrate
@CALL :EVALUATE "%orig_video_bitrate%*%expected_video_size%/%orig_video_size%+0.5"
@SET new_bitrate=%result%

:: convert new bitrate to integer
@CALL :EVALUATE "clng(%new_bitrate%)"
@SET suffix=bSize%result%%suffix%

:: print info
@ECHO Original size: %input_size% bytes (%orig_video_size% + %orig_audio_size% + %orig_rest_size% bytes)
@ECHO Original bitrate: %orig_video_bitrate% kbit/s
@IF "%there_exist_subs%" EQU "true" (
	@ECHO New size: %targetsize% bytes (%expected_video_size% + %enc_audio_size% + %orig_rest_size% bytes)
) ELSE (
	@ECHO New size: %targetsize% bytes (%expected_video_size% + %enc_audio_and_rest_size% bytes)
)
@ECHO New bitrate: %new_bitrate% kbit/s

	:SKIP_BITRATE_CALCULATION

@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Starting encoding process
@ECHO ---------------------------------------------------------------------------

:: if [Q]uality option is used, then %bitrate_control% is allready set, but if [S]ize or [B]itrate option is used, then it is not set, but %new_bitrate% is set.
:: if [P]ass-through is set, then %video_passthrough% is defined, and no video encoding is needed.

:: first we check whether there is enough space available in the tmp_folder to demux.
:: for convenience I use the orig_video_size as predicted size in case the [Q]uality option is used.
:: if [P]ass-through is used, then there is no video encoding, and predicted_video_size is zero.
@IF "%bitrate_control%" EQU "" ( @CALL :PREDICT_SIZE "%duration_sec%", "%new_bitrate%", 0, 0, "predicted_video_size" ) ELSE ( SET predicted_video_size=%orig_video_size% )
@IF DEFINED video_passthrough SET predicted_video_size=0
@CALL :ASSERT_FREE_SPACE "%predicted_video_size%", %tmp_folder:~0,1%
@IF %ERRORLEVEL% NEQ 0 GOTO CLEAN_UP

@IF DEFINED video_passthrough (
	@ECHO.
	@ECHO Passing original video. No video encoding is taking place. 
	@MOVE %tmp_orig_video% %tmp_enc_video% > NUL
	@IF !ERRORLEVEL! NEQ 0 ECHO Renaming original video failed. All files left in TMP dir. Check code. & GOTO FINISH
) ELSE (
	@IF "%bitrate_control%" EQU "" @SET bitrate_control=--vb %new_bitrate% --two-pass

	@CALL :HANDBRAKE %tmp_orig_video%, %tmp_enc_video%, "" , "!bitrate_control!", "%useropt%", "LOW" 3>&2 2>&1 1>&3
	@ECHO Errorlevel: !ERRORLEVEL!
)

:: size for use later
@FOR /F "tokens=*" %%A IN (%tmp_enc_video%) DO @SET enc_video_size=%%~zA

@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Making picture samples
@ECHO ---------------------------------------------------------------------------

@GOTO END_LOOP_PICTURE_SAMPLES
:: Make picture samples
@SET picture_sample_nr=0

	:LOOP_PICTURE_SAMPLES
@SET /A picture_sample_nr=%picture_sample_nr%+1

@CALL :EVALUATE "clng(((%duration_sec%)/(%nr_picture_samples%*2))*(2*%picture_sample_nr%-1))"
@SET time_offset=%result%
@ECHO Making sample picure %picture_sample_nr%.

@START /B /LOW /AFFINITY %affinity% /WAIT ffmpeg %ffmpeg_options% -loglevel error -ss %time_offset% -i %tmp_orig_video% -frames 1 "%tmp_folder%\sample_%picture_sample_nr%_original.bmp" 
@IF %ERRORLEVEL% NEQ 0 ECHO Cannot make sample picture.

@START /B /LOW /AFFINITY %affinity% /WAIT ffmpeg %ffmpeg_options% -loglevel error -ss %time_offset% -i %tmp_enc_video% -frames 1 "%tmp_folder%\sample_%picture_sample_nr%_encoded.bmp" 
@IF %ERRORLEVEL% NEQ 0 ECHO Cannot make sample picture.

@IF %picture_sample_nr% LSS %nr_picture_samples% GOTO LOOP_PICTURE_SAMPLES

	:END_LOOP_PICTURE_SAMPLES
@ECHO Finished making sample pictures.

@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Starting muxing process
@ECHO ---------------------------------------------------------------------------

:: first we check whether there is enough space available in the destination_folder to mux.
@CALL :ASSERT_FREE_SPACE "%enc_audio_and_rest_size% + %enc_video_size%", %destination_folder:~0,1%
@IF %ERRORLEVEL% NEQ 0 @( ECHO The encoded video will not be deleted^^! & GOTO END )

:: Generate unique suffix for output in finish directory if the file allready exists.
	:LOOP_FINAL_NAME
@IF NOT EXIST "%destination_folder%\%input_name%%mux_nr_suffix%.mkv" GOTO FINAL_NAME_UNIQUE
@IF NOT DEFINED mux_nr SET mux_nr=0
@SET /A mux_nr=%mux_nr%+1
@SET mux_nr_suffix=-0%mux_nr%
@GOTO LOOP_FINAL_NAME
	:FINAL_NAME_UNIQUE

@mkvmerge --priority lower --ui-language English -o "%destination_folder%\%input_name%%mux_nr_suffix%.mkv" %tmp_enc_video% %tmp_enc_audio_and_rest% | %filter%
@ECHO Error: %ERRORLEVEL% 
@IF %ERRORLEVEL% NEQ 0 GOTO FINISH

@ECHO.
@mkvmerge --ui-language English --identify "%destination_folder%\%input_name%%mux_nr_suffix%.mkv" 
@IF %ERRORLEVEL% EQU 2 GOTO FINISH

@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Comparing...
@ECHO ---------------------------------------------------------------------------

@mkvinfo --ui-language English "%destination_folder%\%input_name%%mux_nr_suffix%.mkv" > %tmp_enc_mkvinfo%
@IF %ERRORLEVEL% NEQ 0 GOTO ERROR_MKVINFO

:: @fc %tmp_orig_mkvinfo% %tmp_enc_mkvinfo%

	:CLEAN_UP
@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Cleaning up...
@ECHO ---------------------------------------------------------------------------

@IF EXIST "%tmp_folder%\*.mkv" @del "%tmp_folder%\*.mkv" & @ECHO Temporary mkv files removed

	:FINISH
@ECHO.
@ECHO ---------------------------------------------------------------------------
@ECHO Finished
@ECHO Timestamp: %date% %time%
@ECHO ---------------------------------------------------------------------------

	:END
@GOTO QUIT

	:ERROR_NO_DURATION
@ECHO.
@ECHO ERROR: Duration can not be found.
@GOTO CLEAN_UP

	:ERROR_MKVINFO
@ECHO.
@ECHO MKVINFO returned errorcode: %ERRORLEVEL%
@GOTO QUIT

	:ERROR_NO_ARG
@ECHO.
@ECHO ERROR: No file selected to encode.
@GOTO QUIT

	:ERROR_BAD_ARG
@ECHO.
@ECHO ERROR: File selected for encode can not be found.
@GOTO QUIT

	:ERROR_TARGET_FOLDER_NOT_EXIST
@ECHO.
@ECHO ERROR: Target folder doesn't seem to exist. Exiting...
@GOTO QUIT

	:MOVE_LOG
@FOR /F "eol== delims=" %%L IN ('TYPE "%session_settings_file%"') DO SET %%L
@IF EXIST %log_file% MOVE /Y %log_file% "%destination_folder%\%input_name%%mux_nr_suffix%.encode.log" >NUL
@GOTO EOF

::---------------------------------------------------------------------------------------------------------------------------------------------------------------
::FUNCTIONS
::---------------------------------------------------------------------------------------------------------------------------------------------------------------

:HANDBRAKE			-- runs handbrake
::					-- %~1: input-path
::					-- %~2: output-path
:: 					-- %~3: start-stop-command
::					-- %~4: bitrate command
::					-- %~5: user command
::					-- %~6: priority
:: handbrake uses stderr (2) to show encode info, and stdout (1) to show progress. | only takes stdout (1), not (2). Because wtee doesn't like progress, we need to switch those two.
:: redirects are read from right to left! So first we redirect stdout (1) to 3 then stderr (2) to 1, then 3 to stderr (2). Stderr is not passed with pipe, only stdout.

@START /B /%~6 /AFFINITY %affinity% /WAIT HandBrakeCLI %~3 -i %1 -o %2 -e x264 --x264-profile high --h264-level 4.1 --x264-tune film --audio "none" %~5 %~4 --no-dvdnav %testoptions% 
@IF %ERRORLEVEL% NEQ 0 ECHO Handbrake exited with an error. & GOTO CLEAN_UP
@GOTO:EOF

:EVALUATE			-- evaluate with VBS and return to result variable
::					-- %~1: VBS string to evaluate
:: Extra info: http://groups.google.com/group/alt.msdos.batch.nt/browse_thread/thread/9092aad97cd0f917
:: Default  SetLocale() = 2067, d.i. voor belgie. VBS interpreteert dan een punt als een decimaal teken,
:: wat OK is, maar geeft het resultaat terug met een komma. Een getal met een komma kan VBS
:: blijkbar niet als een getal interpreteren, en geeft een error. SetLocale(1033) zorgt dat de
:: decimale teken een punt is, zodat het getal terug hergebruikt kan worden in VBS.

@IF [%1]==[] ECHO Input argument missing & GOTO :EOF 
::@ECHO "%~1"

@ECHO SetLocale(1033) : wsh.echo "result="^&eval("%~1") > %temp%\evaluate_tmp_%random_number%.vbs 
@FOR /f "delims=" %%a IN ('cscript //nologo %temp%\evaluate_tmp_%random_number%.vbs') do @SET "%%a" 
@DEL %temp%\evaluate_tmp_%random_number%.vbs
::@ECHO EVAL: "%~1" RESULT: "%result%"

@GOTO:EOF


:CALCULATE_AVERAGE	-- calculates the average of bitrates stored in a file
::					-- %~1: path to file
::					-- %~2: OUT resulting bitrate
@SETLOCAL
:: Concatenate values to a string
@SET concat_bitrates=0
@FOR /F "usebackq tokens=2" %%L IN (%1) DO @SET concat_bitrates=!concat_bitrates!+%%L

:: Calculate the (average) bitrate
@CALL :EVALUATE "(%concat_bitrates%)/%nr_samples_for_autosize%"
@(ENDLOCAL 
	SET "%~2=%result%"
)
@GOTO:EOF


:MAKE_SAMPLES		-- function that makes samples
::					-- %~1: input
::					-- %~2: output_name_prefix
::					-- %~3: handbrake options
::					-- %~4: print info [Y/N], default: N - prints % done, Y gives old prints
::					-- %~5: OUT average bitrate
:: Make samples and put their bitrates into a file.
@SET tmp_sample_bitrates_log="%tmp_folder%\%~2_bitrates_log.txt"
@IF EXIST %tmp_sample_bitrates_log% @del %tmp_sample_bitrates_log%
@SET sample_nr=0

:LOOP_ENCODE_SAMPLES
:: Print some info on progres
@CALL :EVALUATE "CInt(%sample_nr%/%nr_samples_for_autosize%*100)"
@IF "%~4" EQU "N" <nul set /p =Working... %result%%% done

@SET /A sample_nr=%sample_nr%+1

@CALL :EVALUATE "((%duration_sec%-%sample_duration_sec%)/(%nr_samples_for_autosize%*2))*(2*%sample_nr%-1)"
@SET start_time=%result%
@IF "%~4" EQU "Y" @ECHO Starttime of sample %sample_nr% is %start_time% sec.

@IF "%~4" EQU "Y" (@SET "print_redirect=1>&2") ELSE (@SET "print_redirect=1>nul")
@CALL :HANDBRAKE %1, "%tmp_folder%\%~2_%sample_nr%.mkv", "--start-at duration:%start_time% --stop-at duration:%sample_duration_sec%", "--quality %auto_size_rf%", "%~3" %print_redirect%, "BELOWNORMAL" 2>%tmp_sample_activity_log%
@FOR /F "tokens=3 delims=:" %%T IN ('FIND "kb/s:" ^< %tmp_sample_activity_log%') DO @(
	@IF "%~4" EQU "Y" (@ECHO Bitrate: %%T kbit/s) 
	@ECHO Sample%sample_nr%: %%T kbit/s >> %tmp_sample_bitrates_log%
)

:: We kunnen bitrates ook anders berekenen: door gewoon te kijken naar de video-filesize (!) zoals reeds gedaan boven:
:: @FOR /F "tokens=*" %%A IN ("%tmp_folder%\tmp_video_sample%sample_nr%.mkv") DO @SET sample_size=%%~zA
:: @CALL :EVALUATE "%sample_size%*8/20/1000"
:: @ECHO Bitrate based on size: %result% kbit/s

@IF "%~4" EQU "Y" @ECHO.
@IF "%~4" EQU "N" <nul set /p "=%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%%bs_char%"

@IF %sample_nr% LSS %nr_samples_for_autosize% GOTO LOOP_ENCODE_SAMPLES
@IF "%~4" EQU "Y" @ECHO Finished making samples.

@CALL :CALCULATE_AVERAGE %tmp_sample_bitrates_log%, %~5
@GOTO:EOF


:DETERMINE_MEDIUM	-- this function takes a size and returns the smallest possible medium size
::					-- %~1: source size in bytes
::					-- %~2: OUT medium size that fits the source
::					-- %~3: OUT user friendly medium size that fits the source
:: Choose as size any size which is greater than the predicted, and start encoding!

@IF "%~1" EQU "" @(
	@ECHO No source size specified to check against medium.
	@SET "%~2=0"
	@SET "%~3=0KiB"
	@GOTO:EOF
)	

@CALL :EVALUATE "%~1<=%CD-28P80min%"
@IF %result% EQU True SET "%~2=%CD-28P80min%" & SET "%~3=25MiB" & @GOTO :EOF

@CALL :EVALUATE "%~1<=%CD-14P80min%"
@IF %result% EQU True SET "%~2=%CD-14P80min%" & SET "%~3=50MiB" & @GOTO :EOF

@CALL :EVALUATE "%~1<=%CD-7P80min%"
@IF %result% EQU True SET "%~2=%CD-7P80min%" & SET "%~3=100MiB" & @GOTO :EOF

@CALL :EVALUATE "%~1<=%CD-2H80min%"
@IF %result% EQU True SET "%~2=%CD-2H80min%" & SET "%~3=175MiB" & @GOTO :EOF

@CALL :EVALUATE "%~1<=%CD-H80min%"
@IF %result% EQU True SET "%~2=%CD-H80min%" & SET "%~3=350MiB" & GOTO :EOF

@CALL :EVALUATE "%~1<=%CD-80min%"
@IF %result% EQU True SET "%~2=%CD-80min%" & SET "%~3=700MiB" & GOTO :EOF

@CALL :EVALUATE "%~1<=%CD-80minX2%"
@IF %result% EQU True SET "%~2=%CD-80minX2%" & SET "%~3=1.37GiB" & GOTO :EOF

@CALL :EVALUATE "%~1<=%CD-80minX3%"
@IF %result% EQU True SET "%~2=%CD-80minX3%" & SET "%~3=2.05GiB" & GOTO :EOF

@CALL :EVALUATE "%~1<=%Bluray-8P-SL%"
@IF %result% EQU True SET "%~2=%Bluray-8P-SL%" & SET "%~3=3.125GiB" & GOTO :EOF

@CALL :EVALUATE "%~1<=%DVD-SL%"
@IF %result% EQU True SET "%~2=%DVD-SL%" & SET "%~3=4.37GiB" & GOTO :EOF

@CALL :EVALUATE "%~1<=%DVD-DL%"
@IF %result% EQU True SET "%~2=%DVD-DL%" & SET "%~3=7.95GiB" & GOTO :EOF

@CALL :EVALUATE "%~1<=%Bluray-HSL%"
@IF %result% EQU True SET "%~2=%Bluray-HSL%" & SET "%~3=12.5GB" & GOTO :EOF

@CALL :EVALUATE "%~1<=%Bluray-TDL%"
@IF %result% EQU True SET "%~2=%Bluray-TDL%" & SET "%~3=15.52GB" & GOTO :EOF

@CALL :EVALUATE "%~1<=%Bluray-SL%"
@IF %result% EQU True SET "%~2=%Bluray-SL%" & SET "%~3=25GB" & GOTO :EOF

@CALL :EVALUATE "%~1<=%Bluray-DL%"
@IF %result% EQU True SET "%~2=%Bluray-DL%" & SET "%~3=50GB" & GOTO :EOF

@ECHO Auto Size could not be set. The filesize (%~1 bytes) is too large for any medium.
@SET "%~2=0" 
@SET "%~3=0KiB"
@GOTO:EOF

:PREDICT_SIZE		-- predicts the file size based on bitrates 
::					-- %~1: duration in seconds
::					-- %~2: bitrate (kbit/s) of video
::					-- %~3: bitrate (kbit/s) of audio
::					-- %~4: size (bytes) of rest
::					-- %~5: OUT (bytes) resulting size
@SETLOCAL
@SET d_sec=%~1
@SET v_bitrate=%~2
@SET a_bitrate=%~3
@SET r_bytes=%~4

:: Check input
@IF "%d_sec%" EQU "" @ECHO ERROR: duration = 0sec
@IF "%v_bitrate%" EQU "" @SET v_bitrate=0
@IF "%a_bitrate%" EQU "" @SET a_bitrate=0
@IF "%r_bytes%" EQU "" @SET r_bytes=0

:: Calculate
@CALL :EVALUATE "((%v_bitrate%)+(%a_bitrate%))*(%d_sec%)*1000/8+(%r_bytes%)"

@(ENDLOCAL 
	SET "%~5=%result%"
)
@GOTO :EOF

:TRIM_SPACES retval string -- trims spaces around string and assigns result to variable
::                         -- retvar [out] variable name to store the result in, no (!) quotes
::                         -- string [in]  string to trim, no (!) quotes
:: source http://www.dostips.com
@FOR /f "tokens=1*" %%A in ("%*") do @set "%%A=%%B"
@GOTO :EOF

:SEEK_IN_MAP key !map! out_var	-- returns value from key in map
::					-- %~1: variable key name.
::					-- %~2: map variable, possibly with delayed expansion.
::					-- %~3: OUT variable name in which value will be returned.
@SETLOCAL
@ECHO OFF
SET key=%~1
SET map=%~2

:: Extract value
CALL SET temp_val=%%map:*%key%--=%%
SET value=%temp_val:;=&rem.%

:: Validity check
IF "%value:--=%" NEQ "%value%" @( 
ECHO Wrong value ^("%value%"^) with key ^("%key%"^) returned from map ^("%map%"^)
GOTO QUIT )

@( 	ENDLOCAL
	SET "%~3=%value%"
)
@GOTO :EOF

:MAKE_AUDIO_MAP map path
::					-- %~1: OUT map
::					-- %~2: path of the FFMPEG stream txt
@SETLOCAL
@ECHO OFF
SET map=
SET file=%2
SET nr=0

FOR /F "tokens=4-9 delims=,:" %%T IN ('TYPE %file% ^| FINDSTR /I /R "^.*Stream.*Audio.*$"') DO (
	REM @ECHO tokens: %%T, %%U, %%V, %%W, %%X
	REM codec
	CALL :TRIM_SPACES tmp_var %%T
	SET "map=codec!nr!.0--!tmp_var!;!map!"
	REM frequency has HZ at the end and should be removed.
	CALL :TRIM_SPACES tmp_var %%U
	FOR /F "tokens=1 delims= " %%F IN ("%%U") DO ( CALL :TRIM_SPACES tmp_var %%F )
	SET "map=frequency!nr!.0--!tmp_var!;!map!"
	REM channels
	CALL :TRIM_SPACES tmp_var %%V
	SET "map=channels!nr!.0--!tmp_var!;!map!"
	REM sample resolution
	CALL :TRIM_SPACES tmp_var %%W
	SET "map=sampleres!nr!.0--!tmp_var!;!map!"
	REM bitrate has kbit/s at the end, and possibly default
	IF "%%X" EQU "" (
		SET "map=bitrate!nr!.0--64;!map!"
		ECHO WARNING^^! Bitrate of track !nr! is unknown and is set to 64 kbit/s.
	) ELSE (
		FOR /F "tokens=*" %%C IN ('ECHO %%X ^| FIND /I /C "kb/s"') DO (
			IF "%%C" EQU "1" ( REM dus er is effectief sprake van een xxxkb/s of dergelijk
				FOR /F "tokens=1 delims= " %%B IN ("%%X") DO ( CALL :TRIM_SPACES tmp_var %%B )
				SET "map=bitrate!nr!.0--!tmp_var!;!map!"
			)
		)
		REM default selection
		FOR /F "tokens=*" %%C IN ('ECHO %%X ^| FIND /I /C "default"') DO ( IF "%%C" EQU "1" SET "map=default--!nr!.0;!map!" )
	)
	SET /A nr=!nr!+1
)
@( 	ENDLOCAL
	SET "%~1=%map%streams--%nr%"
)
@GOTO :EOF

:AUDIO_MAP_UPDATE	-- checks the converson string and updates the audio map
::					-- %~1: conversion_string
::					-- %~2: track number
::					-- %~3: OUT conv_nr variable name with last used conversion number
::					-- %~4: OUT audio map name
@SETLOCAL
@FOR /F "tokens=1-2 delims=:" %%X IN ("%~1") DO (
@SET "check=%%X"
@SET "conversion=%%Y"
)
:: @ECHO "CONVERSION: %conversion%"

@CALL :EVALUATE "%check%" & REM If this is true, it means that this track can be encoded with the codec.
:: @ECHO "CHECK: %check% --> %result%"

@IF "%result%" EQU "True" (
	SET /A conv_track_nr=!%~3!+1
	SET orig_track_nr=%~2
	SET "conversion=%conversion:--=!orig_track_nr!.!conv_track_nr!--%" 
)

(@ENDLOCAL
	IF "%result%" EQU "True" SET "%~4=!%~4!;%conversion%" & SET "%~3=%conv_track_nr%"
)	
@GOTO :EOF


:SCRAMBLE track, coordinate 		-- finds all the comination between the original and compressible tracks
::					-- %~1: track number: one should begin with 0
::					-- %~2: coordinate-part, which is passed by by the scramble interation
:: One should call the scramble function without arguments
@SETLOCAL
@SET track_nr=%~1
@IF "%track_nr%" EQU "" SET track_nr=0
@CALL :SEEK_IN_MAP conversions%track_nr%, "%audio_map%", nr_conv
@IF "%track_nr%" GTR "%nr_max_stream%" ECHO Scramble track too high & GOTO :EOF

@FOR /L %%C IN (0,1,%nr_conv%) DO (
	IF "%track_nr%" EQU "%nr_max_stream%" ( REM This means the coordinates should be written. 
		SET "scram=!scram!;%~2,%track_nr%.%%C"
	) ELSE (
		SET /A next_track=%track_nr%+1
		IF "%~2" EQU "" ( 
			CALL :SCRAMBLE !next_track!, "%track_nr%.%%C"
		) ELSE (
			CALL :SCRAMBLE !next_track!, "%~2,%track_nr%.%%C"
		)
	)
)
(@ENDLOCAL
	SET "scramble=%scramble%%scram%"
	IF "%track_nr%" EQU "0" SET scramble=!scramble:~1!
)	
@GOTO :EOF

:PRINT_SCRAMBLE video_bitrate		-- prints file sizes based on the video bitrate and audio scramble
::					-- %~1: video bitrate
::					-- %~2: prefix
@SETLOCAL
@SET "video_bitrate=%~1"
@CALL :EVALUATE "FormatNumber(%video_bitrate%)"
@ECHO %~2Average video bitrate: %result% kbit/s
@FOR /F "tokens=1" %%i in ("%scramble:;=!newline!%") do @( REM For each conversion possibility the loop begins here
	@SET "audio_str= | + "
	@SET "bitrates="
	@FOR %%j in (%%i) do @(
		@CALL :SEEK_IN_MAP codec%%j, "%audio_map%", codec
		@CALL :SEEK_IN_MAP bitrate%%j, "%audio_map%", bitrate
		@SET "audio_str=!audio_str![!codec! ^@!bitrate!kbit/s], "
		@SET "bitrates=!bitrates!!bitrate!+"
	)
	@SET "audio_str=!audio_str:~0,-2!"
	@SET "bitrates=!bitrates:~0,-1!"
	@CALL :PREDICT_SIZE "%duration_sec%", "%video_bitrate%", "!bitrates!", "", size
	@CALL :DETERMINE_MEDIUM !size!, medium, medium_formated
		REM extra calculatesize for minimum bitrate
		@CALL :EVALUATE "%video_bitrate% - (%video_bitrate%*%percentage_autosize_bitrate_error%/100)"
		@CALL :PREDICT_SIZE "%duration_sec%", "!result!", "!bitrates!", "", min_size
		@CALL :DETERMINE_MEDIUM !min_size!, min_medium, min_medium_formated
	@ECHO %~2!audio_str! --^> !medium_formated! ^(!min_medium_formated!^)& REM Om een of andere rede print deze laatste haak niet zonder escape
)
@ENDLOCAL
@GOTO :EOF

:NEGLECT_TRACK_CMDLINE		-- generates command line for neglected tracks
::					-- %~1: "Audio", "Subtitle" or "Video": based on ffmpeg stream naming scheme
::					-- %~2: comma delimited user input of tracks to neglect
::					-- %~3: OUT variable name into which to put the ffmpeg command line part for removing selected tracks
::					-- %~4: OUT variable name for error code: 0 = OK, else not OK
:: This function iterates through all selected tracks and returns the command line for fmpeg to ignore it during extraction
:: It also checks whether the track exists. If not, it returns an error.
@SETLOCAL
@SET err=0
@FOR %%N IN (%~2) DO @(
	REM Sometimes there is no stream name like "(nld)", so streamnumber looks like "#0:3: Audio:" instead of "#0:2(nld): Audio:".
	REM That is wht we use "[:(]" after stream number.
	@FOR /F %%C IN ('TYPE %tmp_orig_identify_ffmpeg% ^| FINDSTR /I /R "#0:%%N[:(].*%~1:" ^| FIND /V /C ""') DO @(
		@IF "%%C" EQU "0" @( @ECHO %~1 track ID %%N does not exist. & @SET err=1 )
		@IF "%%C" GTR "1" @( @ECHO %~1 track ID %%N was found more than once. & @SET err=1 )
	)
	@MOVE %tmp_pre-enc_identify_ffmpeg% %tmp_identify% > NUL
	@TYPE %tmp_identify% | @FINDSTR /I /V /R "#0:%%N.*%~1:" > %tmp_pre-enc_identify_ffmpeg%
	@DEL %tmp_identify% 
	@SET cmd_line=!cmd_line! -map -0:%%N
)
@(ENDLOCAL
	SET %~3=%cmd_line%
	SET %~4=%err%
)
@GOTO :EOF

:PRINT_ANALYSIS		-- function used for compression analysis printing
::					-- %~1: resolution_suffix
::					-- %~2: cmd-line options
@SETLOCAL
@SET "res_height_suffix=%~1"
@SET "cmd_line_options=%~2"

@ECHO - Denoise: off
@CALL :MAKE_SAMPLES %input%, "tmp_video_sample_%res_height_suffix%", "%useropt% %cmd_line_options%", "N", avg_bitrate
@CALL :PRINT_SCRAMBLE "%avg_bitrate%", "   "

@IF "%choice_decomb_analysis%" EQU "2" @(
	@ECHO.
	@ECHO - Denoise: off - Decomb: on
	@CALL :MAKE_SAMPLES %input%, "tmp_video_sample_%res_height_suffix%_decomb", "%useropt% %cmd_line_options% --decomb", "N", avg_bitrate_decomb
	@CALL :PRINT_SCRAMBLE "!avg_bitrate_decomb!", "   "
)

@IF "%choice_denoise_analysis%" EQU "2" @(
	@ECHO.
	@ECHO - Denoise: weak (predicted^)
	@CALL :MAKE_SAMPLES %input%, "tmp_video_sample_%res_height_suffix%_denoise-s", "%useropt% %cmd_line_options% --denoise=strong", "N", avg_bitrate_ds
	@CALL :EVALUATE "(0.65954)*(!avg_bitrate!-!avg_bitrate_ds!) + !avg_bitrate_ds!"
	@CALL :PRINT_SCRAMBLE "!result!", "   "
	@IF "%choice_decomb_analysis%" EQU "2" @(
		@ECHO.
		@ECHO - Denoise: weak (predicted^) - Decomb: on
		@CALL :MAKE_SAMPLES %input%, "tmp_video_sample_%res_height_suffix%_denoise-s_decomb", "%useropt% %cmd_line_options% --denoise=strong --decomb", "N", avg_bitrate_ds_decomb
		@CALL :EVALUATE "(0.65954)*(!avg_bitrate_decomb!-!avg_bitrate_ds_decomb!) + !avg_bitrate_ds_decomb!"
		@CALL :PRINT_SCRAMBLE "!result!", "   "
	)
	@ECHO.
	@ECHO - Denoise: medium (predicted^)
	@CALL :EVALUATE "(0.5138)*(!avg_bitrate!-!avg_bitrate_ds!) + !avg_bitrate_ds!"
	@CALL :PRINT_SCRAMBLE "!result!", "   "
	@IF "%choice_decomb_analysis%" EQU "2" @(
		@ECHO.
		@ECHO - Denoise: medium (predicted^) - Decomb: on
		@CALL :EVALUATE "(0.5138)*(!avg_bitrate_decomb!-!avg_bitrate_ds_decomb!) + !avg_bitrate_ds_decomb!"
		@CALL :PRINT_SCRAMBLE "!result!", "   "
	)
	@ECHO.
	@ECHO - Denoise: strong
	@CALL :PRINT_SCRAMBLE "!avg_bitrate_ds!", "   "
	@IF "%choice_decomb_analysis%" EQU "2" @(
		@ECHO.
		@ECHO - Denoise: strong - Decomb: on
		@CALL :PRINT_SCRAMBLE "!avg_bitrate_ds_decomb!", "   "
	)
)

@IF "%choice_denoise_analysis%" EQU "3" @(
	@ECHO.
	@ECHO - Denoise: weak
	@CALL :MAKE_SAMPLES %input%, "tmp_video_sample_%res_height_suffix%_denoise-w", "%useropt% %cmd_line_options% --denoise=weak", "N", avg_bitrate
	@CALL :PRINT_SCRAMBLE "!avg_bitrate!", "   "
	@IF "%choice_decomb_analysis%" EQU "2" @(
		@ECHO.
		@ECHO - Denoise: weak - Decomb: on
		@CALL :MAKE_SAMPLES %input%, "tmp_video_sample_%res_height_suffix%_denoise-w_decomb", "%useropt% %cmd_line_options% --denoise=weak --decomb", "N", avg_bitrate_decomb
		@CALL :PRINT_SCRAMBLE "!avg_bitrate_decomb!", "   "
	)
	@ECHO.
	@ECHO - Denoise: medium
	@CALL :MAKE_SAMPLES %input%, "tmp_video_sample_%res_height_suffix%_denoise-m", "%useropt% %cmd_line_options% --denoise=medium", "N", avg_bitrate
	@CALL :PRINT_SCRAMBLE "!avg_bitrate!", "   "
	@IF "%choice_decomb_analysis%" EQU "2" @(
		@ECHO.
		@ECHO - Denoise: weak - Decomb: on
		@CALL :MAKE_SAMPLES %input%, "tmp_video_sample_%res_height_suffix%_denoise-m_decomb", "%useropt% %cmd_line_options% --denoise=medium --decomb", "N", avg_bitrate_decomb
		@CALL :PRINT_SCRAMBLE "!avg_bitrate_decomb!", "   "
	)
	@ECHO.
	@ECHO - Denoise: strong
	@CALL :MAKE_SAMPLES %input%, "tmp_video_sample_%res_height_suffix%_denoise-s", "%useropt% %cmd_line_options% --denoise=strong", "N", avg_bitrate
	@CALL :PRINT_SCRAMBLE "!avg_bitrate!", "   "
	@IF "%choice_decomb_analysis%" EQU "2" @(
		@ECHO.
		@ECHO - Denoise: strong - Decomb: on
		@CALL :MAKE_SAMPLES %input%, "tmp_video_sample_%res_height_suffix%_denoise-s_decomb", "%useropt% %cmd_line_options% --denoise=strong --decomb", "N", avg_bitrate_decomb
		@CALL :PRINT_SCRAMBLE "!avg_bitrate_decomb!", "   "
	)
)

(@ENDLOCAL & REM -- RETURN VALUES
    REM IF "%~1" NEQ "" SET %~1=%local_var_1%
    REM IF "%~2" NEQ "" SET %~2=%local_var_2%
)
@GOTO:EOF

:ASSERT_FREE_SPACE	-- function used to check free space
::					-- %~1: [IN] required space, can be a calculation also 
::					-- %~2: [IN] drive letter on which the free space is required

@SETLOCAL

	:RETRY_FREE_SPACE_CHECK
@CALL :GET_FREE_SPACE %~2, "local_drive_freespace" 
@CALL :EVALUATE "FormatNumber(( %local_drive_freespace% - ( %~1 ) * 1.1 ), 0, 0, 0, 0)" REM The result is a decimal number, like 45067209474. 
::@ECHO After free space evaluation: %local_drive_freespace% - (%~1)*1.1 ^= %result%

@IF %result% LSS 0 @(
	@ECHO.
	@ECHO Not enough space available on drive %~2.
	@CALL :EVALUATE "FormatNumber(abs(%result%/1024/1024), 0, 0, 0, 0)"
	@CHOICE /C "YNC" /N /M "Free !result! MB and try again or continue? [Y/N/C]"
	@IF !ERRORLEVEL! EQU 1 @GOTO RETRY_FREE_SPACE_CHECK
	@IF !ERRORLEVEL! EQU 3 @ECHO Skipping free space check... & @EXIT /B 0
	
	@ECHO Not enough space available to continue. Error raised.
	REM One can not do GOTO CLEAN_UP from here because this is run as a function. To stop the whole batch from a function
	REM one needs to either cause a syntax error, or use EXIT (without /B).
	@EXIT /B 1
)
@GOTO:EOF

:GET_FREE_SPACE		-- gets current free space in bytes for a partition
::					-- %~1: [IN] drive letter
::					-- %~2: [OUT] variable into which to put free space amount
@SETLOCAL

@FOR /F "tokens=2 delims==" %%S IN ('wmic /NODE:"%COMPUTERNAME%" LogicalDisk Where DeviceID^="%~1:" Get FreeSpace /VALUE') DO @SET local_freespace=%%S

@(ENDLOCAL & REM -- RETURN VALUES
    IF "%~2" NEQ "" SET %~2=%local_freespace%
)
@GOTO:EOF

:GET_SETTING		-- sets the option to the defined key-value pair in the settings file
::					-- %~1: [IN/OUT] option
::					-- %~2: [IN] settings file path
::					-- %~3: [IN OPTIONAL] verbose TRUE/FALSE
@SETLOCAL

@FOR /F "tokens=2 delims==" %%O IN ('TYPE %~2 ^| FIND /I "%~1="') DO @(
	@SET setting=%%O
	@IF "%~3" EQU "TRUE" ECHO Setting %~1 = %%O
)

@(ENDLOCAL & REM -- RETURN VALUES
    IF "%~1" NEQ "" SET %~1=%setting%
)
@GOTO:EOF

:FIND_IN_PATH		-- checks whether a file exists in PATH
::					-- %~1: [IN] filename
@SETLOCAL

@FOR %%X IN (%~1) DO @(SET FOUND=%%~$PATH:X)
@IF NOT DEFINED FOUND EXIT /B 1

@ENDLOCAL
@GOTO :EOF

:myFunctionName		-- proto-function
::					-- %~1: [IN/OUT] argument description here
@SETLOCAL
:: --function body here
set local_var_1=...
set local_var_2=...
@(ENDLOCAL & REM -- RETURN VALUES
    IF "%~1" NEQ "" SET %~1=%local_var_1%
    IF "%~2" NEQ "" SET %~2=%local_var_2%
)
@GOTO:EOF

::--------------------------------------------------------------------------------------------------------------------------------------------------------------
::END FUNCTIONS
::--------------------------------------------------------------------------------------------------------------------------------------------------------------


:QUIT
::@ENDLOCAL
@PAUSE
@ECHO.
:EOF