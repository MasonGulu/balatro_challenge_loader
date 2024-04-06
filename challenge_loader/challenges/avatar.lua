

local card_suites = { "S", "D", "C", "H" }
local avatar = {
    name = "Avatar",
    id = "c_avatar",
    rules = {
        custom = {
            { id = 'all_eternal' },
            { id = 'set_seed',   value = 'SEEDEEDS' },
        },
        modifiers = {
        }
    },
    jokers = { -- glass joker or golden ticket,
        -- probably not steel joker, lucky cat
        -- diamond = gold
        -- heart = glass
        -- spade = chips steel
        -- club = mult lucky
        -- bloodstone + glass joker
        { id = "j_bloodstone", eternal = true },
        { id = "j_glass",      eternal = true }
    },
    consumeables = {
    },
    vouchers = {
    },
    deck = {
        cards = {},
        type = 'Challenge Deck'
    },
    restrictions = {
        banned_cards = {
        },
        banned_tags = {
        },
        banned_other = {
        }
    }
}
local function add_avatar(s, r, e)
    avatar.deck.cards[#avatar.deck.cards + 1] = { s = s, r = r, e = e }
end
local avatar_e = {
    S = "m_steel",
    C = "m_lucky",
    H = "m_glass",
    D = "m_gold"
}
for _, s in ipairs(card_suites) do
    local e = avatar_e[s]
    add_avatar(s, "A", e)
    add_avatar(s, "K", e)
    add_avatar(s, "Q", e)
    add_avatar(s, "J", e)
    add_avatar(s, "T", e)
    for i = 2, 9 do
        add_avatar(s, tostring(i), e)
    end
end

return avatar