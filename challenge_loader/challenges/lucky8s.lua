
local card_suites = { "S", "D", "C", "H" }
local lucky_8s = {
    name = "Lucky 8s",
    id = 'c_lucky_8s',
    rules = {
        custom = {
        },
        modifiers = {
        }
    },
    jokers = {
        { id = 'j_8_ball', eternal = true },
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
for i = 1, 2 do
    for _, s in ipairs(card_suites) do
        table.insert(lucky_8s.deck.cards, { s = s, r = "8", e = i == 1 and "m_lucky" or nil })
    end
end
return lucky_8s