Config = {}

Config.ImageSettings = {
    basePath = 'nui://ox_inventory/web/images/',
    extension = '.png'
}

Config.Items = {
    -- Joogid
    { label = "Banaani Smuuti", item = "banana_smoothie", price = 90, category = "drinks" },
    { label = "Jääkokteil", item = "ice_cocktail", price = 90, category = "drinks" },
    { label = "Jääkohv", item = "ice_coffee", price = 90, category = "drinks" },
    { label = "Jäätee", item = "icetea", price = 90, category = "drinks" },
    { label = "Jäälatte", item = "icedlatte", price = 90, category = "drinks" },

    -- Söögid
    { label = "WigWrap", item = "chicken_wrap", price = 120, category = "food" },
    { label = "Friikad", item = "fried_french_fries", price = 120, category = "food" },
    { label = "Kahekordne Burger", item = "double_shot", price = 120, category = "food" },
    { label = "Hotdog", item = "hotdog", price = 129, category = "food" },
}

Config.TargetZones = {
    {
        coords = vector3(-859.7737, -1128.5774, 7.3971),
        heading = 180.0,
        length = 1.5,
        width = 1.5,
        options = {
            {
                name = 'open_food_menu',
                icon = 'fas fa-hamburger',
                label = 'Vaata menüüd',
                onSelect = function()
                    TriggerEvent('food_menu:openMenu')
                end
            }
        }
    }
}
