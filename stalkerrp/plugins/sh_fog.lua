PLUGIN.name = "Fog"
PLUGIN.author = "Bilwin"
PLUGIN.description = "..."
PLUGIN.schema = "Any"

local ix = ix or {}
ix.Seasons = {
    ["winter"] = {
        fogColor = Vector( 255, 255, 255 ) * 0.4,
        fogStart = 0,
        fogEnd = 1300,
        fogDensity = 0.01
    },
    ["summer"] = {
        fogColor = Vector( 170, 100, 31 ),
        fogStart = 500,
        fogEnd = 1300,
        fogDensity = 0.15
    }
}

ix.Seasons.Active = "winter"

if ( CLIENT ) then
    local _data = ix.Seasons[ix.Seasons.Active]
    local fog_data = {
        ["fog_start"] = _data.fogStart,
        ["fog_end"] = _data.fogEnd,
        ["fog_color"] = _data.fogColor,
        ["fog_max_density"] = _data.fogDensity,
    }

    local transSpeed = 0.3
    local transWait = 2
    local wait = 0
    local fogFade = 0
    local function SetupFog()
        if not LocalPlayer().InSnow then
            if CurTime() > wait and fogFade != 0 then
                fogFade = math.Clamp(fogFade - (FrameTime() * transSpeed), 0, 1)
            end
        else
            wait = CurTime() + transWait
            fogFade = math.Clamp(fogFade + (FrameTime() * transSpeed), 0, 1)
        end

        render.FogMode(MATERIAL_FOG_LINEAR)
            render.FogStart(fog_data.fog_start)
            render.FogEnd(fog_data.fog_end)
            render.FogColor(fog_data.fog_color.r, fog_data.fog_color.g, fog_data.fog_color.b)
        render.FogMaxDensity(math.Clamp(fog_data.fog_max_density * fogFade, 0.1, 1))

        return true
    end

    PLUGIN.SetupWorldFog = SetupFog
    PLUGIN.SetupSkyboxFog = SetupFog
end
