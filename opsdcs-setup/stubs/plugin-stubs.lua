---------------------------------------------------------------------------
--- PLUGIN ENV
--- used by entry.lua in plugins
---------------------------------------------------------------------------

---------------------------------------------------------------------------
--- Declaring plugin
---------------------------------------------------------------------------

--- Declares a plugin and loads it into EDGE.
--- @param name string @The name of the plugin.
--- @param props PluginProperties @Plugin properties
function declare_plugin(name, props) return end

--- Sets a flag informing the engine of a finished plugin declaration.
function plugin_done() return end

---------------------------------------------------------------------------
--- Add stuff
---------------------------------------------------------------------------

--- Adds an aircraft
--- @param data AircraftData @The aircraft data.
function add_aircraft(data) return end

--- Adds a launcher @TODO ws_data
--- @param ws_data table
--- @param data table
--- @return table
function add_launcher(ws_data, data) return end

--- ??
function add_navpoint() return end

--- ??
function add_plugin_systems() return end

--- Adds a surface unit @TODO gt_data
--- @param gt_data table
function add_surface_unit(gt_data) return end

--- ??
function add_unit_to_country() return end

--- ??
function declare_callbackME() return end

--- Declares a gun mount. @TODO gun_data
--- @param name string
--- @param gun_data table
function declare_gun_mount(name, gun_data) return end

--- Declares a loadout. @TODO loadout_data
--- @param data table
function declare_loadout(loadout_data) return end

--- Declares a sensor. @TODO sensor_data
--- @param sensor_data table
function declare_sensor(sensor_data) return end

--- Declares a service life for an object.
--- @param obj_name string @The name of the object.
--- @param country_name string @The name of the country.
--- @param from_year number @The start year.
--- @param to_year number @The end year.
function declare_service_life(obj_name, country_name, from_year, to_year) return end

--- Declares a weapon. @TODO weapon_data
--- @param data table
function declare_weapon(weapon_data) return end

--- Makes a flyable object.
--- @param obj_name string @The name of the object.
--- @param cockpit_path string @The path to the cockpit scripts (optional).
--- @param fm table @optional flight model. optional_fm = { mod_of_fm_origin, dll_with_fm }. if nil, then SFM is used
--- @param comm_path string @The path to the comm.lua script (radio menu).
function make_flyable(obj_name, cockpit_path, fm, comm_path) return end

--- Makes a payload rules list.
--- @param stations number[] @Stations requiring CLSIDs.
--- @param clsids string[] @The required CLSIDs.
function make_payload_rules_list(stations, clsids) return end

--- Makes view settings.
--- @param obj_name string @The name of the object.
--- @param viewSettings table @The view settings table.
--- @param snapViews table @The snap views table.
function make_view_settings(obj_name, viewSettings, snapViews) return end

---------------------------------------------------------------------------
--- Engine, FM parameters
---------------------------------------------------------------------------

--- Returns predefined engine parameters.
--- @param name string @The name of the engine.
--- @return table @The engine parameters.
function predefined_engine(name) return end

--- Returns predefined FM parameters.
--- @param name string @The name of the FM.
--- @return table @The FM parameters.
function predefined_fm(name) return end

--- Returns specialized engine parameters.
--- @param base_params table @The base engine parameters.
--- @param params table @The modified parameters.
--- @return table @The specialized engine parameters.
function specialize_engine_parameters(base_params, params) return end

--- Returns specialized FM parameters.
--- @param base_params table @The base FM parameters.
--- @param params table @The modified parameters.
--- @return table @The specialized FM parameters.
function specialize_fm_parameters(base_params, params) return end

---------------------------------------------------------------------------
--- Resource paths
---------------------------------------------------------------------------

--- Mounts a animations path.
--- @param path string The path.
function mount_vfs_animations_path(path) return end

--- Mounts a liveries path.
--- @param path string The path.
function mount_vfs_liveries_path(path) return end

--- Mounts a model path.
--- @param path string The path.
function mount_vfs_model_path(path) return end

--- Mounts a sound path.
--- @param path string The path.
function mount_vfs_sound_path(path) return end

--- Mounts a texture path.
--- @param path string The path.
function mount_vfs_texture_path(path) return end

---------------------------------------------------------------------------
--- Effect parameters
---------------------------------------------------------------------------

--- Returns fire effect parameters.
--- @param fire_arg table @The fire argument
--- @param duration number @The duration
--- @param attenuation number @The attenuation
--- @param light_pos table @The light position { x, y, z }
function fire_effect(fire_arg, duration, attenuation, light_pos) return end

--- Returns smoke effect parameters.
--- @param smoke_arg table @The smoke argument
--- @param duration number @The duration
function gatling_effect(gatling_arg, duration) return end

--- Returns smoke effect parameters.
function smoke_effect() return end

---------------------------------------------------------------------------
--- Warhead parameters
---------------------------------------------------------------------------

--- Returns antiship warhead parameters.
--- @param power number @kg
--- @param caliber number @caliber in mm
--- @return table @warhead parameters.
function antiship_penetrating_warhead(power, caliber) return end

--- Returns cumulative warhead parameters.
--- @param a number
--- @param b number
--- @return table @warhead parameters.
function cumulative_warhead(a, b) return end

--- Returns directional A2A warhead parameters.
function directional_a2a_warhead() return end

--- Returns enhanced A2A warhead parameters.
--- @param power number @kg
--- @param caliber number @caliber in mm
--- @return table @warhead parameters.
function enhanced_a2a_warhead(power, caliber) return end

--- Returns penetrating warhead parameters.
--- @param power number @kg
--- @param caliber number @caliber in mm
--- @return table @warhead parameters.
function penetrating_warhead(power, caliber) return end

--- Returns predefined warhead parameters.
--- @param name string @The name of the warhead.
--- @return table @The warhead parameters.
function predefined_warhead(name) return end

--- Returns simple AA warhead parameters.
--- @param power number @kg
--- @return table @warhead parameters.
function simple_aa_warhead(power) return end

--- Returns simple warhead parameters.
--- @param power number @kg
--- @param caliber number @caliber in mm
--- @return table @warhead parameters.
function simple_warhead(power, caliber) return end

---------------------------------------------------------------------------
--- Fuze parameters
---------------------------------------------------------------------------

--- Returns predefined fuze parameters.
--- @param name string @The name of the fuze.
--- @return table @The fuze parameters.
function predefined_fuze(name) return end

--- Returns specialized fuze parameters.
--- @param base_params table @The base fuze parameters.
--- @param params table @The modified parameters.
--- @return table @The specialized fuze parameters.
function specialize_fuze_parameters(base_params, params) return end

---------------------------------------------------------------------------
--- Weapons
---------------------------------------------------------------------------

--- ??
function cluster_desc(name, type, data) return end

--- Combines cluster parameters.
--- @param a table
--- @param b table
--- @param name string
function combine_cluster(a, b, name) return end

--- ??
function get_bomb_munition() return end

--- Returns predefined aircraft gunpod parameters.
--- @param name string @The name of the gunpod.
--- @return table @The gunpod parameters.
function get_predefined_aircraft_gunpod(name) return end

--- Returns gun mount parameters.
--- @param name string @The name of the gun mount.
--- @param ammo_override table @The ammo overrides. { count = 90 }
--- @param mount_override table @The mount overrides.
--- @param trigger_override table @The trigger overrides.
function gun_mount(name, ammo_override, mount_override, trigger_override) return end

--- Returns pylon parameters.
--- @param index number @The index of the pylon.
--- @param weapon_start number @default weapon start (0 - rail, 1 - catapult, > 1 - from hatch)
--- @param x number @coordinates in aircraft space, can be 0, 0, 0 if connector is used
--- @param y number @coordinates in aircraft space, can be 0, 0, 0 if connector is used
--- @param z number @coordinates in aircraft space, can be 0, 0, 0 if connector is used
--- @param connector_data table @connector data
--- @param pylon_data table @pylon data
--- @return table @The pylon parameters.
function pylon(index, weapon_start, x, y, z, connector_data, pylon_data) return end

---------------------------------------------------------------------------
--- Misc
---------------------------------------------------------------------------

--- Creates aircraft task.
--- @param task string @task name: "Nothing", "SEAD", "AntishipStrike", "AWACS", "CAS", "CAP", "Escort", "FighterSweep", "GAI", "GroundAttack", "Intercept", "AFAC", "PinpointStrike", "Reconnaissance", "Refueling", "RunwayAttack", "Transport"
--- @return table @task data
function aircraft_task(task) return end

--- Locks player interaction.
--- @param type string @unit type
function lock_player_interaction(type) return end

--- ??
function make_aircraft_carrier_capable() return end

--- Makes default mech animation.
--- @param preset string @The preset name
--- @return table @The mech animation data
function make_default_mech_animation(preset) return end

--- Makes airplane canopy geometry. LOOK_BAD, LOOK_AVERAGE, LOOK_GOOD
--- @param a number
--- @param b number
--- @param c number
--- @return table @CanopyGeometry data
function makeAirplaneCanopyGeometry(a, b, c) return end

--- Makes helicopter canopy geometry.
--- @param a number
--- @param b number
--- @param c number
--- @return table @CanopyGeometry data
function makeHelicopterCanopyGeometry() return end

--- Sets manual path.
--- @param obj_name string @The name of the object.
--- @param path string @The path to the manual.
function set_manual_path(obj_name, path) return end

--- ??
function turn_on_waypoint_panel() return end

--- Unlocks player interaction.
--- @param type string @unit type
function unlock_player_interaction(type) return end

--- Returns Damage parameters.
--- @param data table
--- @return table @The Damage parameters.
function verbose_to_dmg_properties(data) return end

--- Returns Failures parameters.
--- @param data table
--- @return table @The Failures parameters.
function verbose_to_failures_table(data) return end

---------------------------------------------------------------------------
--- GUI functions
---------------------------------------------------------------------------

--- ??
--- @param name string
function Get_Combined_GUISettings_Preset(name) return end

--- ??
--- @param name string
function Get_Fuze_GUISettings_Preset(name) return end

--- ??
--- @param name string
function Get_LGU_GUISettings_Preset(name) return end

--- ??
--- @param name string
function Get_RFGU_GUISettings_Preset(name) return end

---------------------------------------------------------------------------
--- Plugin properties
---------------------------------------------------------------------------

--- @class PluginProperties
--- @description Plugin properties
--- @field installed boolean @Can the player can interact with the plugin? (e.g. settings, mission editor)
--- @field dirName string @The name of the directory containing the plugin.
--- @field displayName string @The name of the plugin shown within UI elements. (exc. module viewer)
--- @field fileMenuName string @The name of the file containing the flyable declaration.
--- @field update_id string @The ID to check for in DCS updates.
--- @field state string @String representing plugin accessibility state. (“installed” or “uninstalled”)
--- @field info string @The description of the plugin, shown in the main menu.
--- @field encyclopedia_path string @File path pointing towards an Encyclopedia folder containing Plane/plugin_name.txt.
--- @field binaries table<string> @Strings representing names of binary executable files (.dll) to inject.
--- @field Skins PluginSkinsTable @Defines the path and representation of UI elements.
--- @field Missions PluginMissionsTable @Defines the path and UI representation for flyable missions.
--- @field LogBook PluginLogBookTable @Defines the path and UI representation for the pilot logbook.
--- @field InputProfiles PluginInputProfilesTable @Defines the path and UI representation for input profile bindings.
--- @field Options PluginOptionsTable @Option properties

--- @class PluginSkinsTable
--- @description Skins table
--- @field name string @The name of the plugin to show within most UI.
--- @field dir string @The folder path of elements used.

--- @class PluginMissionsTable
--- @description Missions table
--- @field name string @The name of the plugin to show within most UI.
--- @field dir string @The folder path of mission files used.
--- @field CLSID string @Customisable string text showing a class ID, e.g. {CLSID...CLSID}.

--- @class PluginLogBookTable
--- @description LogBook table
--- @field name string @The name of the plugin to show within most UI.
--- @field type string @The plugin type.

--- @class PluginInputProfilesTable

--- @class PluginOptionsTable
--- @description Option properties
--- @field name string @The name of the plugin to show within most UI.
--- @field nameId string @The ID of the plugin used for options.
--- @field dir string @The folder path of option settings used.
--- @field CLSID string @Class ID (any string)

---------------------------------------------------------------------------
--- Aircraft data
---------------------------------------------------------------------------

--- @class AircraftData
--- @description Aircraft data table
--- @field string Name
--- @field string DisplayName
--- @field string Picture
--- @field number Rate @rewardpoint in mp
--- @field string Shape
--- @field string WorldID
--- @field table ViewSettings @TODO
--- @field table Countries @TODO
--- @field boolean HumanCockpit
--- @field string HumanCockpitPath

--- @field table net_animation @TODO

--- @field table shape_table_data @TODO
--- @field table CanopyGeometry @from makeAirplaneCanopyGeometry()

--- @field string mapclasskey
--- @field table attribute @TODO
--- @field table Categories @TODO

--- @field string sounderName

-- general characteristics
--- @field boolean singleInFlight
--- @field number length
--- @field number height
--- @field number wing_area
--- @field number wing_span
--- @field table wing_tip_pos
--- @field number RCS
--- @field boolean has_speedbrake
--- @field number stores_number
--- @field number tanker_type
--- @field boolean is_tanker
--- @field number refueling_points_count
--- @field table refueling_points @TODO
--- @field table crew_members @TODO
--- @field table mechanimations @TODO
--- @field string EmptyWeight
--- @field string MaxFuelWeight
--- @field string MaxHeight
--- @field string MaxSpeed
--- @field string MaxTakeOffWeight
--- @field string WingSpan

-- weight & fuel characteristics
--- @field number M_empty
--- @field number M_nominal
--- @field number M_max
--- @field number M_fuel_max
--- @field number H_max
--- @field number CAS_min
--- @field number average_fuel_consumption

-- AI flight parameters
--- @field number V_opt
--- @field number V_take_off
--- @field number V_land
--- @field number V_max_sea_level
--- @field number V_max_h
--- @field number Vy_max @maximal climb rate
--- @field number Mach_max
--- @field number Ny_min @minimal safe acceleration
--- @field number Ny_max @maximal safe acceleration
--- @field number Ny_max_e
--- @field number Ny_max_e
--- @field number AOA_take_off
--- @field number bank_angle_max
--- @field number flaps_maneuver
--- @field number range @operational range

-- suspension characteristics
--- @field boolean has_differential_stabilizer
--- @field number tand_gear_max
--- @field table nose_gear_pos
--- @field number nose_gear_wheel_diameter
--- @field table main_gear_pos
--- @field number main_gear_wheel_diameter

-- engine characteristics
--- @field boolean has_afteburner
--- @field number thrust_sum_max
--- @field number thrust_sum_ab
--- @field number engines_count
--- @field number IR_emission_coeff
--- @field number IR_emission_coeff_ab
--- @field table engines_nozzles @TODO

-- sensor characteristics
--- @field boolean radar_can_see_ground
--- @field number detection_range_max
--- @field table Sensors @TODO

-- radio characteristics
--- @field boolean TACAN
--- @field table HumanRadio @TODO
--- @field table panelRadio @TODO

-- ECM characteristics
--- @field table passivCounterm @TODO
--- @field table Countermeasures @TODO
--- @field table passivCounterm @TODO
--- @field table chaff_flare_dispenser @TODO

-- armament characteristics
--- @field table Pylons @TODO
--- @field table Tasks @TODO
--- @field table DefaultTask @from aircraft_task()

-- damage
--- @field table fires_pos @TODO
--- @field table Damage @from verbose_to_dmg_properties()
--- @field table DamageParts @TODO

-- flight model characteristics
--- @field table SFM_Data @TODO

-- extnernal lights
--- @field table lights_data @TODO

-- land & takeoff
--- @field table LandRWCategories @TODO
--- @field table TakeOffRWCategories @TODO

-- failures
--- @field table Failures @TODO

-- additional properties
--- @field table AddPropAircraft @TODO

-- guns
--- @field table Guns @TODO
--- @field number ammo_type_default
--- @field table ammo_type @TODO

---------------------------------------------------------------------------
--- Radio commands data (comm.lua)
---------------------------------------------------------------------------

--- @class data
--- @field VoIP boolean
--- @field base table
--- @field communicators table @TODO
--- @field curCommunicatorId number
--- @field customUnitProperties table @'AddPropAircraft' in the module entry description (lua) -> wsInitData.AddPropList (cpp) -> RadioCommandDialogsPanel.data.customUnitProperties (lua). table["PropertyName"] = {value = 0, str_value = ""}
--- @field highlighting boolean
--- @field initialized boolean
--- @field menuEmbarkToTransport table @Misson command menu @TODO
--- @field menuOther table @Misson command menu @TODO
--- @field menus table @menu @TODO
--- @field msgHandlers table @Message handlers converts messages into internal events and passes them into RadioCommandDialogsPanel.onEvent() @TODO
--- @field pComm table @TODO
--- @field pUnit table @Player unit @TODO
--- @field radioAutoTune boolean
--- @field recepientInfo boolean
--- @field rootItem table
--- @field showingOnlyPresentRecepients boolean
--- @field worldEventHandlers table @World event handles handle world events and passes them into RadioCommandDialogsPanel.onEvent() @TODO
--- @type data
data = {}
data.base = {
    --- @type table
    package = {},
    --- @param module string
    require = function (module) end,
    --- @type Export
    Export = {},
    --- @type db
    db = {},
    --- @type lfs
    lfs = {},
    --- @type io
    io = {},
    --- @type os
    os = {},
    --- @type net
    net = {},
}
