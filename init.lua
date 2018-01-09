function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end

-- looks like it doesn't like the symlink
--hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.pathwatcher.new(os.getenv("HOME") .. "/github/dothammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")

