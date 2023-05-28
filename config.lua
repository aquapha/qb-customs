Config = {}
Config.DEBUG_POLY = true
Config.UseRadial = true
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- no integration yet, not sure if worth it

-- Allowed types of payment.
Config.ALLOWED_MONEY_TYPES = {
    'cash',
    'bank'
}

Config.Shops = {
    ['lscustoms'] = {
        ['job'] = 'mechanic', -- Unlocked for job role, comes from society
        ['zone'] = {
            ['shape'] = {
                vector2(-319.19741821289, -131.34129333496),
                vector2(-324.78256225586, -147.92210388184),
                vector2(-356.32266235352, -136.65902709961),
                vector2(-354.97357177734, -132.8236541748),
                vector2(-345.1520690918, -122.33336639404)
            },
            ['minZ'] = 38.98,
            ['maxZ'] = 39.47
        },
        ['shopLabel'] = 'LS Customs', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 72, -- Blip sprite
        ['blipColor'] = 46, -- Blip color
        ['blipCoords'] = vector3(-337.86, -136.35, 39.01) -- Blip coordinates
    },
    ['bennys'] = {
        ['job'] = 'none', -- Unlocked for all, comes from player cash/bank
        ['zone'] = {
            ['shape'] = {
                vector2(-203.55299377441, -1311.2630615234),
                vector2(-203.40112304688, -1322.1186523438),
                vector2(-204.0862121582, -1327.3107910156),
                vector2(-208.3600769043, -1334.4067382812),
                vector2(-217.08247375488, -1334.1473388672),
                vector2(-228.24615478516, -1334.2449951172),
                vector2(-228.08572387695, -1319.2351074219)
            },
            ['minZ'] = 30.89,
            ['maxZ'] = 31.29
        },
        ['shopLabel'] = 'Benny\'s Motorworks', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 72, -- Blip sprite
        ['blipColor'] = 46, -- Blip color
        ['blipCoords'] = vector3(-211.73, -1325.28, 30.89) -- Blip coordinates
    },
    ['harmony'] = {
        ['job'] = 'none',
        ['zone'] = {
            ['shape'] = {
                vector2(1172.1085205078, 2644.75390625),
                vector2(1172.326171875, 2635.5859375),
                vector2(1184.9807128906, 2634.96875),
                vector2(1184.4918212891, 2644.9194335938)
            },
            ['minZ'] = 37.78,
            ['maxZ'] = 38.22
        },
        ['shopLabel'] = 'Harmony Repair', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 72, -- Blip sprite
        ['blipColor'] = 46, -- Blip color
        ['blipCoords'] = vector3(1174.93, 2639.45, 37.75) -- Blip coordinates
    },
    ['paleto'] = {
        ['job'] = 'none',
        ['zone'] = {
            ['shape'] = {
                vector2(109.28326416016, 6631.9150390625),
                vector2(115.78814697266, 6625.3198242188),
                vector2(107.11750793457, 6616.5166015625),
                vector2(99.764305114746, 6623.345703125)
            },
            ['minZ'] = 31.78,
            ['maxZ'] = 32.25
        },
        ['shopLabel'] = 'Paleto Repair', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 72, -- Blip sprite
        ['blipColor'] = 46, -- Blip color
        ['blipCoords'] = vector3(109.95, 6627.34, 31.79) -- Blip coordinates
    },
    ['airport'] = {
        ['job'] = 'none',
        ['zone'] = {
            ['shape'] = {
                vector2(-1147.5499267578, -1990.1391601562),
                vector2(-1144.7552490234, -1992.9509277344),
                vector2(-1139.1751708984, -2007.1807861328),
                vector2(-1158.3846435547, -2026.0313720703),
                vector2(-1171.0571289062, -2013.9622802734)
            },
            ['minZ'] = 12.00,
            ['maxZ'] = 18.00
        },
        ['shopLabel'] = 'LS Customs', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 72, -- Blip sprite
        ['blipColor'] = 46, -- Blip color
        ['blipCoords'] = vector3(-1154.92, -2006.41, 13.18) -- Blip coordinates
    },
}

Config.Pricing = {
    ['type'] = 'fixed', -- accepts 'fixed' or 'variable'
    ['repair'] = 2500, -- cost to repair vehicle
    ['fixed'] = { -- base price by level
        ['armor'] = {
            ['-1'] = 0,
            ['0'] = 1000, -- still researching indexes of upgrades
            ['1'] = 2000,
            ['2'] = 3000,
            ['3'] = 4000,
            ['4'] = 5000
        },
        ['brakes'] = {
            ['-1'] = 0,
            ['0'] = 1000,
            ['1'] = 2000,
            ['2'] = 3000,
            ['3'] = 4000,
            ['4'] = 5000
        },
        ['engine'] = {
            ['-1'] = 0,
            ['0'] = 1000,
            ['1'] = 2000,
            ['2'] = 3000,
            ['3'] = 4000,
            ['4'] = 5000
        },
        ['suspension'] = {
            ['-1'] = 0,
            ['0'] = 1000,
            ['1'] = 2000,
            ['2'] = 3000,
            ['3'] = 4000,
            ['4'] = 5000
        },
        ['transmission'] = {
            ['-1'] = 0,
            ['0'] = 1000,
            ['1'] = 2000,
            ['2'] = 3000,
            ['3'] = 4000,
            ['4'] = 5000
        },
        ['turbo'] = 1000,
        ['max'] = 100000
    },
    ['variable'] = { -- percentage of vehicle's value in shared.lua
        ['armor'] = 5,
        ['brakes'] = 5,
        ['engine'] = 5,
        ['suspension'] = 5,
        ['transmission'] = 5,
        ['turbo'] = 5,
        ['max'] = 10,
    }
}

--[[
    @notice DO-NOT-TOUCH

    Generate a basic KVP with the key being
    the name of the vehicle mod and the value
    is the specific unique key for that mod.
    see - https://wiki.rage.mp/index.php?title=Vehicle_Mods
]]--
MOD_KEY_VALUE_PAIR = {
    transmission = 13,
    suspension = 15,
    engine = 11,
    brakes = 12,
    armor = 16,
    turbo = 18,
}
