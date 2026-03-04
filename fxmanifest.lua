fx_version 'cerulean'
game 'gta5'
use_experimental_fxv2_oal 'yes'
lua54 'yes'

name 'takenncs-foodmenu'
author 'takenncs'
version '1.0.0'
description 'foodmenu for ox_lib'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client.lua'
}

dependencies {
    'es_extended',
    'ox_lib',
    'ox_target',
    'ox_inventory'
}

exports {
    'GetItemImagePath'
}
