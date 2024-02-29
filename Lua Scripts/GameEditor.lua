
-- These things unlocks some functions that are locked by some strings.

g_pGameEdit:AddCommandChange("\227\133\156", "n")
g_pGameEdit:AddCommandChange("\227\133\156\227\133\129", "na")
g_pGameEdit:AddCommandChange("\236\184\160", "cm")
g_pGameEdit:AddCommandChange("\227\133\161\227\133\151\227\133\148", "mhp")
g_pGameEdit:AddCommandChange("\227\133\151", "h")
g_pGameEdit:AddCommandChange("\227\133\160", "b")
g_pGameEdit:AddCommandChange("\235\167\136", "ak")
g_pGameEdit:AddCommandChange("\235\168\128", "ai")
g_pGameEdit:AddCommandChange("\227\132\185\227\133\138", "fc")
g_pGameEdit:AddCommandChange("\227\132\183", "e")
g_pGameEdit:AddCommandChange("\227\133\160\235\148\148", "bel")
g_pGameEdit:AddCommandChange("\227\133\163", "l")
g_pGameEdit:AddCommandChange("\227\132\180\227\133\133\227\133\129\227\133\142\227\132\183", "stage")
g_pGameEdit:AddCommandChange("\227\133\129\227\133\135", "ad")
g_pGameEdit:AddCommandChange("\227\133\163\227\133\148", "lp")
g_pGameEdit:AddCommandChange("\235\139\157", "sld")
g_pGameEdit:AddCommandChange("\227\133\149\227\133\149\227\133\149", "uuu")
g_pGameEdit:AddCommandChange("\227\133\138\227\132\177\227\133\129\235\133\184", "crash")
g_pGameEdit:AddCommandChange("\227\132\180\227\132\185", "sf")
g_pGameEdit:AddCommandChange("\227\133\143", "k")
g_pGameEdit:AddCommandChange("\227\133\138\227\132\180", "cs")
g_pGameEdit:AddCommandChange("\235\132\187", "spc")
g_pGameEdit:AddCommandChange("\237\142\152", "vp")
g_pGameEdit:AddCommandChange("\227\133\149\227\133\138", "uc")
g_pGameEdit:AddCommandChange("\236\184\160\227\133\148", "cmp")
g_pGameEdit:AddCommandChange("\227\133\133", "t")
g_pGameEdit:AddCommandChange("\227\133\142\235\132\164", "gsp")
g_pGameEdit:AddCommandChange("\227\133\129\227\132\180\227\133\138", "msc")
g_pGameEdit:AddCommandChange("\227\133\148\227\132\183\227\133\133", "pet")
g_pGameEdit:AddCommandChange("\227\133\148\227\133\129", "pa")
g_pGameEdit:AddCommandChange("\227\133\149\227\132\180\227\132\183\227\132\177\227\132\183\227\133\135", "usered")
g_pGameEdit:AddCommandChange("\235\134\176\227\133\148", "shop")
g_pGameEdit:AddCommandChange("\236\180\136\235\172\180\227\133\156\235\148\148", "channel")
g_pGameEdit:AddCommandChange("\227\133\151\235\145\144\227\133\145\227\132\177", "henir")
g_pGameEdit:AddCommandChange("\227\133\160\227\133\149\227\132\185\227\132\185", "buff")
g_pGameEdit:AddCommandChange("\235\147\156", "em")
g_pGameEdit:AddCommandChange("\227\133\136\235\132\164", "wsp")
g_pGameEdit:AddCommandChange("\227\133\138\227\132\180\227\133\135", "csd")
g_pGameEdit:AddCommandChange("\227\132\185\235\130\152", "fsk")
g_pGameEdit:AddCommandChange("\227\132\185\227\133\136\227\133\129\234\178\140", "fwarp")
g_pGameEdit:AddCommandChange("\227\133\135\235\173\143\227\132\183\227\132\177", "danger")
g_pGameEdit:AddCommandChange("\227\133\144\227\133\160\227\132\180", "obs")
g_pGameEdit:AddCommandChange("\227\133\144\227\133\160\227\132\181", "obsw")
g_pGameEdit:AddCommandChange("\227\133\144\227\133\160\227\132\180\227\133\135\235\148\148", "obsdel")
g_pGameEdit:AddCommandChange("\227\133\144\227\133\160\235\138\144\227\133\144\227\133\135\227\132\183", "obsmode")
g_pGameEdit:AddCommandChange("\236\160\132\236\167\129", "uc2")
g_pGameEdit:AddCommandChange("\236\138\164\237\130\172", "fsk")
g_pGameEdit:AddCommandChange("\236\138\164\237\130\172\236\180\136\234\184\176\237\153\148", "isk")
g_pGameEdit:AddCommandChange("\236\138\164\237\130\172\237\143\172\236\157\184\237\138\184", "sp")
g_pGameEdit:AddCommandChange("\236\178\180\235\160\165", "mhp")
g_pGameEdit:AddCommandChange("\234\179\181\236\167\128", "n")
g_pGameEdit:AddCommandChange("\235\143\136", "e")
g_pGameEdit:AddCommandChange("\235\157\188\236\157\184\235\167\181", "linemap")
g_pGameEdit:AddCommandChange("\227\133\129\227\132\185\227\133\135", "afd")
g_pGameEdit:AddCommandChange("\227\132\177\227\133\148\227\132\180", "rps")
g_pGameEdit:AddCommandChange("\235\157\188\236\157\180\235\148\169\236\138\164\237\133\140\235\175\184\235\132\136", "rps")
g_pGameEdit:AddCommandChange("\236\177\132\227\133\149\227\133\148\227\133\163\227\132\183", "couple")
g_pGameEdit:AddCommandChange("\236\157\180\237\142\153\237\138\184\235\161\156\234\183\184", "EffectLog")
g_pGameEdit:AddCommandChange("EFFECTLOG", "EffectLog")
g_pGameEdit:AddCommandChange("effectlog", "EffectLog")

-- These codes unlocks:
-- All g_pX2Game functions.
-- All NPCs functions.
-- All player unit's functions.
-- Stage functions.
-- Admin functions.
-- Skills functions.
-- Linemap functions.
-- Warping functions.
-- Position functions.
-- Forcehost functions.
-- Connection functions.

g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187\235\144\156 \235\170\172\236\138\164\237\132\176 \236\157\180\235\166\132\236\158\133\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "NPC\235\165\188 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187\235\144\156 \235\170\172\236\138\164\237\132\176 \236\157\180\235\166\132\236\158\133\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187\235\144\156 \235\170\172\236\138\164\237\132\176 \236\157\180\235\166\132\236\158\133\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187\235\144\156 \235\170\172\236\138\164\237\132\176 \236\157\180\235\166\132\236\158\133\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_NORMAL, "stage \236\157\180\235\143\153\236\151\144 \236\132\177\234\179\181 \237\150\136\236\138\181\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "stage \236\157\180\235\143\153\236\151\144 \236\139\164\237\140\168 \237\150\136\236\138\181\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_NORMAL, "\236\158\152\235\170\187\235\144\156 \236\138\164\237\130\172 \236\149\132\236\157\180\235\148\148 \237\152\185\236\157\128 \237\149\180\235\139\185 \236\156\160\235\139\155\236\157\152 \236\138\164\237\130\172\236\157\180 \236\149\132\235\139\153\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_NORMAL, "\236\156\160\237\154\168 \236\138\164\237\130\172 \235\160\136\235\178\168\236\157\180 \236\149\132\235\139\153\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\237\151\136\236\154\169\235\144\152\236\167\128 \236\149\138\236\157\128 \235\178\148\236\156\132\236\158\133\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\163\168\235\178\164:1,  \236\151\152\235\141\148:2~3,  \235\178\160\236\138\164\235\167\136:4~6,  \236\149\140\237\133\140\235\157\188:7~9,  \237\142\152\236\157\180\237\131\128:10~12, \235\178\168\235\141\148:13~17, \237\149\152\235\169\156:18~22 \236\131\140\235\141\148:23~24")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\237\151\136\236\154\169\235\144\152\236\167\128 \236\149\138\236\157\128 \235\178\148\236\156\132\236\158\133\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187 \236\158\133\235\160\165\237\149\152\236\152\128\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187 \236\158\133\235\160\165\237\149\152\236\152\128\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187 \236\158\133\235\160\165\237\149\152\236\152\128\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187\235\144\156 \235\170\172\236\138\164\237\132\176 \236\157\180\235\166\132\236\158\133\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\156\160\235\139\155\236\157\180 \236\151\134\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "0,1\236\157\132 \236\158\133\235\160\165\237\149\152\236\132\184\236\154\148.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "1~8\234\185\140\236\167\128 \236\158\133\235\160\165\237\149\152\236\132\184\236\154\148.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187 \236\158\133\235\160\165\237\149\152\236\152\128\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\176\149\236\160\156 host \237\149\180\236\160\156")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\176\149\236\160\156 host \236\132\164\236\160\149")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187 \236\158\133\235\160\165\237\149\152\236\152\128\236\138\181\235\139\136\235\139\164.")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\184\176\235\179\184\235\176\169\236\139\157 \236\151\176\234\178\176")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "p2p\235\161\156 \234\176\149\236\160\156 \236\151\176\234\178\176")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "relay\235\161\156 \234\176\149\236\160\156 \236\151\176\234\178\176")
g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187 \236\158\133\235\160\165\237\149\152\236\152\128\236\138\181\235\139\136\235\139\164.")