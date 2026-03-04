CreateThread(function()
    for _, zone in pairs(Config.TargetZones) do
        exports.ox_target:addBoxZone({
            coords = zone.coords,
            size = vec3(zone.length, zone.width, 2),
            rotation = zone.heading,
            debug = false,
            options = {
                {
                    name = zone.options[1].name,
                    icon = zone.options[1].icon,
                    label = zone.options[1].label,
                    onSelect = function()
                        TriggerEvent('food_menu:openMenu')
                    end
                }
            }
        })
    end
end)

local function registerMenu(id, title, options)
    lib.registerContext({
        id = id,
        title = title,
        position = 'top-right',
        canClose = true,
        options = options
    })
end

local function showMenu(id)
    lib.showContext(id)
end

local function getItemImage(itemName)
    return Config.ImageSettings.basePath .. itemName .. Config.ImageSettings.extension
end

AddEventHandler('food_menu:openMenu', function()
    local categories = {
        drinks = {
            title = "Drinks",
            items = {}
        },
        food = {
            title = "Food",
            items = {}
        }
    }

    for _, v in ipairs(Config.Items) do
        if v.category == "drinks" then
            table.insert(categories.drinks.items, v)
        elseif v.category == "food" then
            table.insert(categories.food.items, v)
        end
    end

    local mainMenuId = "food_main_menu"
    local mainOptions = {}

    if #categories.drinks.items > 0 then
        local drinksMenuId = "food_drinks_menu"

        local drinkOptions = {}
        for _, item in ipairs(categories.drinks.items) do
            table.insert(drinkOptions, {
                title = item.label,
                description = "Price: $" .. item.price,
                image = getItemImage(item.item),
            })
        end

        registerMenu(drinksMenuId, "🥤 " .. categories.drinks.title, drinkOptions)

        table.insert(mainOptions, {
            title = "🥤 " .. categories.drinks.title,
            description = "Select drink (" .. #categories.drinks.items .. ")",
            menu = drinksMenuId
        })
    end

    if #categories.food.items > 0 then
        local foodMenuId = "food_food_menu"

        local foodOptions = {}
        for _, item in ipairs(categories.food.items) do
            table.insert(foodOptions, {
                title = item.label,
                description = "Price: $" .. item.price,
                image = getItemImage(item.item),
            })
        end

        registerMenu(foodMenuId, "🍔 " .. categories.food.title, foodOptions)

        table.insert(mainOptions, {
            title = "🍔 " .. categories.food.title,
            description = "Select food (" .. #categories.food.items .. ")",
            menu = foodMenuId
        })
    end

    registerMenu(mainMenuId, "🍽️ Food Menu", mainOptions)
    showMenu(mainMenuId)
end)
