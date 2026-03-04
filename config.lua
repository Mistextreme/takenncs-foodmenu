Config = {}

Config.ImageSettings = {
    basePath = 'nui://ox_inventory/web/images/',
    extension = '.png'
}

Config.Items = {
    -- Drinks
    { label = "Banana Smoothie", item = "banana_smoothie", price = 90, category = "drinks" },
    { label = "Ice Cocktail", item = "ice_cocktail", price = 90, category = "drinks" },
    { label = "Ice Coffee", item = "ice_coffee", price = 90, category = "drinks" },
    { label = "Iced Tea", item = "icetea", price = 90, category = "drinks" },
    { label = "Iced Latte", item = "icedlatte", price = 90, category = "drinks" },

    -- Food
    { label = "WigWrap", item = "chicken_wrap", price = 120, category = "food" },
    { label = "Fries", item = "fried_french_fries", price = 120, category = "food" },
    { label = "Double Burger", item = "double_shot", price = 120, category = "food" },
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
                label = 'View Menu',
                onSelect = function()
                    TriggerEvent('food_menu:openMenu')
                end
            }
        }
    }
}
