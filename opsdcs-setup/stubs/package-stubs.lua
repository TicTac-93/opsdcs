---------------------------------------------------------------------------
--- PACKAGES
--- used with require()
---------------------------------------------------------------------------

------------------------------------------------------------------------------
--- lfs
------------------------------------------------------------------------------

--- @class lfs
--- @field add_location fun()
--- @field attributes fun(path:string, attribute:string):table @returns a table of file attributes (mode = file/directory, modification, size)
--- @field chdir fun(path:string) @changes the current directory.
--- @field create_lockfile fun()
--- @field currentdir fun():string @returns install directory.
--- @field del_location fun()
--- @field dir fun(path:string):table @returns a table of files and directories in the specified path.
--- @field locations fun():table @returns drives.
--- @field md5sum fun(path:string):string @returns the MD5 hash of a file.
--- @field mkdir fun(path:string) @creates a directory.
--- @field normpath fun(path:string):string @returns the normalized path.
--- @field realpath fun(path:string):string @returns the absolute path of a file.
--- @field rmdir fun(path:string) @removes a directory.
--- @field tempdir fun():string @returns the temporary directory.
--- @field writedir fun():string @returns the path to the saved games directory.
--- @type lfs
lfs = {}

------------------------------------------------------------------------------
--- os
------------------------------------------------------------------------------

--- @class os
--- @field clock fun():number @returns the time in seconds
--- @field date fun():string @returns the current date.
--- @field difftime fun(t2:number, t1:number):number @returns the difference between two times.
--- @field execute fun(command:string):number @executes a command.
--- @field getenv fun(var:string):string @returns the value of an environment variable.
--- @field open_uri fun(uri:string) @opens a URI.
--- @field remove fun(filename:string) @removes a file.
--- @field time fun():number @returns the current time.
--- @type os
os = {}

------------------------------------------------------------------------------
--- io
------------------------------------------------------------------------------

--- @class io
--- @field read fun()
--- @field write fun()
--- @field close fun() @closes a file.
--- @field lines fun()
--- @field flush fun()
--- @field open fun(filename:string, mode:string):file @opens a file.
--- @field __gc fun()
--- @type io
io = {}

------------------------------------------------------------------------------
--- log
------------------------------------------------------------------------------

--- @class log
--- @field alert fun(message:string) @Logs an alert message.
--- @field debug fun(message:string) @Logs a debug message.
--- @field error fun(message:string) @Logs an error message.
--- @field info fun(message:string) @Logs an info message.
--- @field set_output fun()
--- @field set_output_rules fun()
--- @field warning fun(message:string) @Logs a warning message.
--- @field write fun()
--- @type log
log = {}

------------------------------------------------------------------------------
--- utils
------------------------------------------------------------------------------

--- @class utils
--- @field COLOR table
--- @field PI number
--- @field adv_round fun(value:number, maxAccuracy:number):number
--- @field angleDegrees fun(dd:number, mm:number, ss:number):number
--- @field bitor fun(x:number, y:number):number
--- @field copyTable fun(dest:table, src:table)
--- @field createTableCopy fun(src:table):table
--- @field dofileIn fun(filename:string, env:table):result,errmsg
--- @field dofileInEx fun(filename:string, env:table, base:table)
--- @field getTime fun(sec:number):number,number,number @returns hours, minutes, seconds
--- @field get_azimuth fun(vec:vec3):number
--- @field get_elevation fun(vec:vec3):number
--- @field get_lengthZX fun(vec:vec3):number
--- @field get_vec_length fun(vec:vec3):number
--- @field hasbit fun(x:number, p:number):boolean
--- @field invertColor fun(color:number):number
--- @field loadfileIn fun(filename:string, env:table):function,errmsg @loads a file in an environment.
--- @field makeColor fun(r:number, g:number, b:number):number
--- @field parseCordinates fun(str:string):number,number,number @returns latitude, longitude, course
--- @field round fun(value:number, accuracy:number):number
--- @field round_qty fun(qty:number):number
--- @field units table @units of measurement
--- @field verifyChunk fun(chunk:function, errmsg:string) @returns fun(x:number, parameters:table) with params set
--- @type utils
utils = {}

------------------------------------------------------------------------------
--- db
------------------------------------------------------------------------------

--- @field Callnames table
--- @field Countermeasures table
--- @field Countries table
--- @field CountriesByName table
--- @field DefaultCountry table
--- @field FormationID table
--- @field Formations table
--- @field Pods table
--- @field Seasons table
--- @field Sensors table
--- @field Targets table
--- @field Units table
--- @field Weapons table
--- @field aircraftCallnames fun()
--- @field callnamesRussia table
--- @field declare_service_life_unit fun()
--- @field doesCallsignHasNumericPart fun()
--- @field getCallnames fun()
--- @field getCallnamesRefPoints fun()
--- @field getCountryOfOrigin fun()
--- @field getHistoricalCountres fun()
--- @field getUnitCallnames fun()
--- @field getUnitCallnames2 fun()
--- @field getYearsLauncher fun()
--- @field getYearsLocal fun()
--- @field isWesternCallnames fun()
--- @field localization table
--- @field objectIconByType table
--- @field rates table
--- @field roles table
--- @field typesNavPoints table
--- @type db
db = {}

------------------------------------------------------------------------------
--- dictionary
------------------------------------------------------------------------------

--- @class dictionary
--- @field addKeyToDict fun()
--- @field addNewLang fun()
--- @field clearDict fun()
--- @field clearResourceExceptDEFAULT fun()
--- @field copyFileInMission fun()
--- @field CopyKeysToNewDict fun()
--- @field deleteLang fun()
--- @field exchangeValue fun()
--- @field extractFirstDir fun()
--- @field extractSecondDir fun()
--- @field findDir fun()
--- @field fixDict fun()
--- @field fixValueToResource fun()
--- @field getBriefingData fun()
--- @field getCampaignData fun()
--- @field getCopyDictionary fun()
--- @field getCurDictionary fun()
--- @field getDictionary fun()
--- @field getFullPath fun()
--- @field getLangs fun()
--- @field getMapResource fun()
--- @field getMaxDictId fun()
--- @field getMissionDescription fun()
--- @field getNewDictId fun()
--- @field getNewResourceId fun()
--- @field getResourceCounter fun()
--- @field getValueDict fun()
--- @field getValueDictDEFAULT fun()
--- @field getValueResource fun()
--- @field getValueResourceDEFAULT fun()
--- @field intertFileIntoMission fun()
--- @field isLang fun()
--- @field isSignedMission fun()
--- @field loadDict fun()
--- @field loadDictionary fun()
--- @field packMissionResources fun()
--- @field removeFileFromMission fun()
--- @field removeKey fun()
--- @field removeResource fun()
--- @field removeResourceOnlyDict fun()
--- @field resetDictionary fun()
--- @field resourceExists fun()
--- @field setCurDictionary fun()
--- @field setMaxDictId fun()
--- @field setValueToDict fun()
--- @field setValueToDictEx fun()
--- @field setValueToResource fun()
--- @field showWarningMessageBox fun()
--- @field textToME fun()
--- @field textToMis fun()
--- @field unpackFiles fun()

------------------------------------------------------------------------------
--- Weather
------------------------------------------------------------------------------

--- @class Weather
--- @field getCloudsDensity fun()
--- @field getGroundWindAtPoint fun(pos)
--- @field getGroundWindComponents fun()
--- @field getGroundWindVelDir fun()
--- @field getTemperatureAndPressureAtPoint fun(pos) @returns temperature and pressure at a point. pos = {position = {x=0,y=0,z=0}}
--- @field getWindAtPoint fun()
--- @field getWindComponents fun()
--- @field getWindVelDir fun()
--- @field initAtmospere fun()
--- @field updateSpeedDirForOtherLevel fun()

------------------------------------------------------------------------------
--- sound
------------------------------------------------------------------------------

--- @class sound
--- @field exit fun()
--- @field getDevices fun()
--- @field getLayouts fun()
--- @field getWaveInfo fun()
--- @field init fun()
--- @field pauseMusic fun()
--- @field playMusic fun(playlist) @plays a playlist (table of filenames)
--- @field playPreview fun(file)
--- @field playSound fun(file)
--- @field resumeMusic fun()
--- @field setEffectsGain fun()
--- @field setMusicGain fun()
--- @field stopMusic fun()
--- @field stopPreview fun()
--- @field update fun()
--- @field updateSettings fun()
--- @type sound

------------------------------------------------------------------------------
--- net
------------------------------------------------------------------------------

--- @class net
--- @field CHAT_ALL number
--- @field CHAT_TEAM number
--- @field ERR_BAD_CALLSIGN number
--- @field ERR_BANNED number
--- @field ERR_CONNECT_FAILED number
--- @field ERR_DENIED_TRIAL_ONLY number
--- @field ERR_INVALID_ADDRESS number
--- @field ERR_INVALID_PASSWORD number
--- @field ERR_KICKED number
--- @field ERR_NOT_ALLOWED number
--- @field ERR_PROTOCOL_ERROR number
--- @field ERR_REFUSED number
--- @field ERR_SERVER_FULL number
--- @field ERR_TAINTED_CLIENT number
--- @field ERR_THATS_OKAY number
--- @field ERR_TIMEOUT number
--- @field ERR_WRONG_VERSION number
--- @field GAME_MODE_CONQUEST number
--- @field GAME_MODE_LAST_MAN_STANDING number
--- @field GAME_MODE_MISSION number
--- @field GAME_MODE_TEAM_DEATH_MATCH number
--- @field PS_CAR number
--- @field PS_CRASH number
--- @field PS_EJECT number
--- @field PS_EXTRA_ALLY_AAA number
--- @field PS_EXTRA_ALLY_FIGHTERS number
--- @field PS_EXTRA_ALLY_SAM number
--- @field PS_EXTRA_ALLY_TRANSPORTS number
--- @field PS_EXTRA_ALLY_TROOPS number
--- @field PS_EXTRA_ENEMY_AAA number
--- @field PS_EXTRA_ENEMY_FIGHTERS number
--- @field PS_EXTRA_ENEMY_SAM number
--- @field PS_EXTRA_ENEMY_TRANSPORTS number
--- @field PS_EXTRA_ENEMY_TROOPS number
--- @field PS_LAND number
--- @field PS_PING number
--- @field PS_PLANE number
--- @field PS_SCORE number
--- @field PS_SHIP number
--- @field RESUME_MANUAL number
--- @field RESUME_ON_LOAD number
--- @field RESUME_WITH_CLIENTS number
--- @field banlist_add fun()
--- @field banlist_add_by_ucid fun()
--- @field banlist_get fun()
--- @field banlist_remove fun()
--- @field check_ic_requirements fun()
--- @field check_password fun()
--- @field dostring_in fun(environment:string, code:string):string @Executes a Lua string in a specified Lua environment within the game. (config: main.cfg/autoexec.cfg state, mission: current mission, export: export.lua)
--- @field force_player_slot fun(playerID:number, sideId:number, slotId:number):boolean @Forces a player into a specified slot.
--- @field get_chat_history fun()
--- @field get_default_server_settings fun()
--- @field get_my_player_id fun():number @Returns the playerID of the local player; returns 1 for server.
--- @field get_name fun(playerID:number):string @Returns the name of a given player.
--- @field get_player_info fun(playerID:number, attribute:string|nil):table @Returns player attributes; specific attribute if provided.
--- @field get_player_list fun():table @Returns a list of players currently connected to the server.
--- @field get_server_host fun()
--- @field get_server_id fun():number @Returns the playerID of the server; currently always 1.
--- @field get_server_settings fun()
--- @field get_server_uptime fun()
--- @field get_session_history fun()
--- @field get_slot fun(playerID:number):number, number @Returns the sideId and slotId of a given player.
--- @field get_stat fun(playerID:number, statID:number):number @Returns a specific statistic from a given player.
--- @field hash_password fun()
--- @field is_loopback_address fun()
--- @field is_private_address fun()
--- @field json2lua fun(json:string):table @Converts a JSON string to a Lua value.
--- @field kick fun(playerId:number, message:string):boolean @Kicks a player from the server with an optional message.
--- @field load_mission fun()
--- @field load_next_mission fun()
--- @field log fun(message:string) @Writes an "INFO" entry to the DCS log file.
--- @field lua2json fun(lua:any):table @Converts a Lua value to a JSON string.
--- @field missionlist_append fun()
--- @field missionlist_clear fun()
--- @field missionlist_delete fun()
--- @field missionlist_get fun()
--- @field missionlist_get_installed_theatres fun()
--- @field missionlist_move fun()
--- @field missionlist_run fun()
--- @field missionlist_set_loop fun()
--- @field missionlist_set_shuffle fun()
--- @field recv_chat fun() @Functionality unknown.
--- @field restart fun()
--- @field screenshot_del fun()
--- @field screenshot_request fun()
--- @field send_chat fun(message:string, all:boolean) @Sends a chat message to all players if true, or team otherwise.
--- @field send_chat_to fun(message:string, playerId:number, fromId:number|nil) @Sends a chat message to a specific player, optionally appearing from another player.
--- @field send_rpc_error fun()
--- @field send_rpc_request fun()
--- @field send_rpc_result fun()
--- @field serverinfo_get fun()
--- @field serverinfo_request fun()
--- @field serverlist_get fun()
--- @field serverlist_reset fun()
--- @field serverlist_search fun()
--- @field set_name fun()
--- @field set_slot fun() @Functionality unknown.
--- @field spawn_player fun()
--- @field start_client fun()
--- @field start_server fun()
--- @field stop_game fun()
--- @field stop_network fun()
--- @field trace fun() @Functionality unknown.

------------------------------------------------------------------------------
--- socket
------------------------------------------------------------------------------

--- @class socket
--- @field BLOCKSIZE number
--- @field bind fun()
--- @field choose fun()
--- @field connect fun()
--- @field dns table
--- @field gettime fun()
--- @field newtry fun()
--- @field protect fun()
--- @field select fun()
--- @field sink fun()
--- @field sinkt table
--- @field skip fun()
--- @field sleep fun()
--- @field source fun()
--- @field sourcet table
--- @field tcp fun()
--- @field try fun()
--- @field udp fun()

------------------------------------------------------------------------------
--- terrain
------------------------------------------------------------------------------

--- @class terrain
--- @field Create fun()
--- @field FindNearestPoint fun()
--- @field FindOptimalPath fun()
--- @field GetHeight fun()
--- @field GetMGRScoordinates fun()
--- @field GetSeasons fun()
--- @field GetSurfaceHeightWithSeabed fun()
--- @field GetSurfaceType fun()
--- @field GetTerrainConfig fun()
--- @field Init fun()
--- @field InitLight fun()
--- @field Release fun()
--- @field convertLatLonToMeters fun()
--- @field convertMGRStoMeters fun()
--- @field convertMetersToLatLon fun()
--- @field findPathOnRoads fun()
--- @field getBeacons fun()
--- @field getClosestPointOnRoads fun()
--- @field getClosestValidPoint fun()
--- @field getCrossParam fun()
--- @field getObjectPosition fun()
--- @field getObjectsAtMapPoint fun()
--- @field getRadio fun()
--- @field getRunwayHeading fun()
--- @field getRunwayList fun()
--- @field getStandList fun()
--- @field getTechSkinByDate fun()
--- @field getTempratureRangeByDate fun()
--- @field getTerrainShpare fun()
--- @field isVisible fun()
