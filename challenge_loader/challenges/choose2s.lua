
local card_suites = { "S", "D", "C", "H" }
local choose_2s = {
    name = "Choose 2s",
    id = "c_choose_2s",
    rules = {
        custom = {
        },
        modifiers = {
        }
    },
    jokers = {
        { id = 'j_wee', eternal = true },
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
        table.insert(choose_2s.deck.cards, { s = s, r = i == 1 and "2" or "A" })
    end
end
return choose_2s