local cy = 904215 -- kobuleti
local cx = -319621
local n = 100 -- total number of units
local r = 10000 -- radius

local aircraft = {
    [1] = {
        type = "F-15C",
        country = country.id.USA,
        category = Group.Category.AIRPLANE,
        payload = {
            ["pylons"] = {
                [1] = { ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                [3] = { ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                [4] = { ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                [5] = { ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                [6] = { ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                [7] = { ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                [8] = { ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                [9] = { ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                [11] = { ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },       
            },
            ["fuel"] = 6103,
            ["flare"] = 60,
            ["chaff"] = 120,
        }
    },
    [2] = {
        type = "FA-18C_hornet",
        country = country.id.RUSSIA,
        category = Group.Category.AIRPLANE,
        payload = {
            ["pylons"] = {
                [1] = { ["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}" },
                [2] = { ["CLSID"] = "LAU-115_2*LAU-127_AIM-120C" },
                [3] = { ["CLSID"] = "LAU-115_2*LAU-127_AIM-120C" },
                [4] = { ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                [5] = { ["CLSID"] = "{FPU_8A_FUEL_TANK}" },
                [6] = { ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                [7] = { ["CLSID"] = "LAU-115_2*LAU-127_AIM-120C" },
                [8] = { ["CLSID"] = "LAU-115_2*LAU-127_AIM-120C" },
                [9] = { ["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}" },
            },
            ["fuel"] = 4900,
            ["flare"] = 60,
            ["ammo_type"] = 1,
            ["chaff"] = 60,
            ["gun"] = 100,
        }
    }
}


trigger.action.outText("units: "..tostring(n)..", radius: "..r, 60)
for i=1,n do
    local x = cx + math.random(-r, r)
    local y = cy + math.random(-r, r)
    local idx = i % 2 + 1
    local groupData = {
        ["modulation"] = 0,
        ["tasks"] = {},
        ["uncontrollable"] = false,
        ["task"] = "CAP",
        ["uncontrolled"] = true,
        ["taskSelected"] = true,
        ["route"] = {
            ["points"] = {
                [1] = {
                    ["alt"] = 5000,
                    ["action"] = "Turning Point",
                    ["alt_type"] = "BARO",
                    ["speed"] = 150,
                    ["task"] = {
                        ["id"] = "ComboTask",
                        ["params"] = { ["tasks"] = {
                            [1] = {
                                ["enabled"] = true,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["number"] = 1,
                                ["auto"] = true,
                                ["params"] = {
                                    ["targetTypes"] = {
                                        [1] = "Air",
                                    },
                                    ["priority"] = 0,
                                },
                            }
                        } }
                    },
                    ["type"] = "Turning Point",
                    ["ETA"] = 0,
                    ["ETA_locked"] = true,
                    ["y"] = y,
                    ["x"] = x,
                    ["speed_locked"] = true,
                    ["formation_template"] = "",
                    ["speed_locked"] = true,
                    ["formation_template"] = "",
                },
            },
        },
        ["groupId"] = 2000+i,
        ["hidden"] = false,
        ["units"] = {
            [1] = {
                ["alt"] = 5000,
                ["hardpoint_racks"] = true,
                ["alt_type"] = "BARO",
                ["livery_id"] = "default",
                ["skill"] = "Excellent",
                ["ropeLength"] = 15,
                ["speed"] = 150,
                ["type"] = aircraft[idx].type,
                ["unitId"] = 2000+i,
                ["psi"] = 0,
                ["onboard_num"] = "010",
                ["y"] = y,
                ["x"] = x,
                ["name"] = "dp" .. tostring(i),
                ["payload"] = aircraft[idx].payload,
                ["heading"] = 0,
                ["callsign"] = {
                    [1] = 1,
                    [2] = 1,
                    ["name"] = "Enfield11",
                    [3] = 1,
                },
            },
        },
        ["y"] = y,
        ["x"] = x,
        ["name"] = "dg" .. tostring(i),
        ["communication"] = false,
        ["start_time"] = 0,
        ["frequency"] = 251,
    }
    trigger.action.outText("adding " .. tostring(i), 5)
    coalition.addGroup(aircraft[idx].country, aircraft[idx].category, groupData)
    local con = Group.getByName("dg" .. tostring(i)):getController()
    con:setOption(AI.Option.Air.id.ROE, AI.Option.Air.val.ROE.WEAPON_FREE)
end

local blue_kills = 0
local red_kills = 0
eventsHandler = {
    onEvent = function(self, event)
        local ini = event.initiator and event.initiator:getName() or "-"
        if event.id == world.event.S_EVENT_UNIT_LOST then
            if event.initiator and event.initiator.getCoalition then
                local targetCoalition = event.initiator:getCoalition()
                if targetCoalition == coalition.side.BLUE then
                    red_kills = red_kills + 1
                elseif targetCoalition == coalition.side.RED then
                    blue_kills = blue_kills + 1
                end
                trigger.action.outText("blue kills: " .. tostring(blue_kills) .. ", red kills: " .. tostring(red_kills), 10, true)
            end
        end
    end
}
world.addEventHandler(eventsHandler)
