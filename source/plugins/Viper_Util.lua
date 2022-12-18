getgenv().Viper_Util = {
    ['Players'] = game:GetService('Players')
    ['UI'] = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))(),
    ['ReplicatedStore'] = game:GetService('ReplicatedStorage'),
    ['Lighting'] = game:GetService('Lighting') or workspace.Lighting
    ['UIS'] = game:GetService('UserInputService'),
    ['Client'] = getgenv().Viper_Util['Players'].LocalPlayer,
    ['CV'] = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zirmith/Viper-Hub/main/VERSION.lua"))()
}


getgenv().Viper_Util['Char'] = getgenv().Viper_Util['Client'].Character

getgenv().Viper_Util:CheckForUpdate()
    if getgenv().Viper_Ui['Version'] == getgenv().Viper_Util['CV'].Version then
        return 'Already Updated'
    else
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Zirmith/Viper-Hub/main/source/main/public/builds/"..getgenv().Viper_Util['CV'].Version))()
        end)
        return 'Updated'
    end
end

return getgenv().Viper_Util
