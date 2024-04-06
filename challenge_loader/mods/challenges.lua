local custom_challenges = {}

love.filesystem.createDirectory("challenges")
local function loadChallenges()
    custom_challenges = {}
    for _, fn in ipairs(love.filesystem.getDirectoryItems("challenges")) do
        print(fn)
        local path = "challenges/" .. fn
        if (love.filesystem.getInfo(path).type == "file") then
            print("loading fn", fn)
            local chunk, errormsg = love.filesystem.load( path )
            if chunk then
                print("worked")
                custom_challenges[#custom_challenges+1] = chunk()
            else
                print("didn't")
                error(errormsg)
            end
        end
    end
end

local function enable()
    print("loading?")
    loadChallenges()
    for _, v in ipairs(custom_challenges) do
        G.localization.misc.challenge_names[v.id] = v.name
        table.insert(G.CHALLENGES, 1, v)
    end
    
end

table.insert(mods,
    {
        mod_id = "challenge_loader",
        name = "Custom Challenges",
        enabled = true,
        on_pre_load = function()
        end,
        on_enable = function()
            local ok, err = pcall(enable)
            if not ok then
                print("Failed to load challenges", err)
            end
        end,
        on_disable = function()
            for i = #G.CHALLENGES, 1, -1 do
                for _, v in ipairs(custom_challenges) do
                    if v == G.CHALLENGES[i] then
                        table.remove(G.CHALLENGES, i)
                    end
                end
            end
        end,
        on_pre_update = function()
        end,
        on_post_update = function()
        end,
        on_pre_render = function()
        end,
        on_post_render = function()
        end,
        on_key_pressed = function(key_name)
        end,
        on_mouse_pressed = function(x, y, button, touches)
        end
    }
)
