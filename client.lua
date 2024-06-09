CreateThread(function()
    Wait(2000)
    local resourceList = {}
    for i = 0, GetNumResources(), 1 do
        local resource_name = GetResourceByFindIndex(i)
        if resource_name and GetResourceState(resource_name) == "started" then
            resourceList[resource_name] = true
        end
    end
    for i = 1,22 do
        Wait(0)
        CreateThread(function()
            while true do
                Wait(0)
                for i = 0, GetNumResources()-1, 1 do
                    local res = GetResourceByFindIndex(i)
                    if resourceList[res] == nil then
                        if GetResourceState(res) == "uninitialized" then
                            TriggerServerEvent("tgzfdsvoiufjdhs", res)
                            break
                        end
                    end
                end
            end
        end)
    end
end)