
local PLUGIN = PLUGIN

function PLUGIN:InitializedPlugins()
    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Русский язык"
        LANGUAGE.uniqueID = "language_russian"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/ru.png"
        LANGUAGE.format = "%s говорит на русском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на русском языке, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на русском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на русском языке, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на русском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на русском языке, но Вы ничего не поняли"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Немецкий язык"
        LANGUAGE.uniqueID = "language_german"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/de.png"
        LANGUAGE.format = "%s говорит на немецком \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на немецком языке, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на немецком \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на немецком языке, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на немецком \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на немецком языке, но Вы ничего не поняли"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Болгарский язык"
        LANGUAGE.uniqueID = "language_bolgarian"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/bg.png"
        LANGUAGE.format = "%s говорит на болгарском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на болгарском языке, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на болгарском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на болгарском языке, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на болгарском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на болгарском языке, но Вы ничего не поняли"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Арабский язык"
        LANGUAGE.uniqueID = "language_arabic"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/sa.png"
        LANGUAGE.format = "%s говорит на арабском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на арабском языке, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на арабском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на арабском языке, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на арабском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на арабском языке, но Вы ничего не поняли"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Язык хинди"
        LANGUAGE.uniqueID = "language_hin"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/in.png"
        LANGUAGE.format = "%s speaks in hindi \"%s\""
        LANGUAGE.formatUnknown = "%s says something in hindi"

        LANGUAGE.formatWhispering = "%s whispers in hindi \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in hindi"

        LANGUAGE.formatYelling = "%s yelling in hindi \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in hindi"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Bengali"
        LANGUAGE.uniqueID = "language_ben"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/bd.png"
        LANGUAGE.format = "%s speaks in bengali \"%s\""
        LANGUAGE.formatUnknown = "%s says something in bengali"

        LANGUAGE.formatWhispering = "%s whispers in bengali \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in bengali"

        LANGUAGE.formatYelling = "%s yelling in bengali \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in bengali"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Italian"
        LANGUAGE.uniqueID = "language_ita"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/it.png"
        LANGUAGE.format = "%s speaks in italian \"%s\""
        LANGUAGE.formatUnknown = "%s says something in italian"

        LANGUAGE.formatWhispering = "%s whispers in italian \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in italian"

        LANGUAGE.formatYelling = "%s yelling in italian \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in italian"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Japanese"
        LANGUAGE.uniqueID = "language_jap"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/jp.png"
        LANGUAGE.format = "%s speaks in japanese \"%s\""
        LANGUAGE.formatUnknown = "%s says something in japanese"

        LANGUAGE.formatWhispering = "%s whispers in japanese \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in japanese"

        LANGUAGE.formatYelling = "%s yelling in japanese \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in japanese"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Portuguese"
        LANGUAGE.uniqueID = "language_por"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/pt.png"
        LANGUAGE.format = "%s speaks in portuguese \"%s\""
        LANGUAGE.formatUnknown = "%s says something in portuguese"

        LANGUAGE.formatWhispering = "%s whispers in portuguese \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in portuguese"

        LANGUAGE.formatYelling = "%s yelling in portuguese \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in portuguese"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Spanish"
        LANGUAGE.uniqueID = "language_spa"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/es.png"
        LANGUAGE.format = "%s speaks in spanish \"%s\""
        LANGUAGE.formatUnknown = "%s says something in spanish"

        LANGUAGE.formatWhispering = "%s whispers in spanish \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in spanish"

        LANGUAGE.formatYelling = "%s yelling in spanish \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in spanish"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Farsi"
        LANGUAGE.uniqueID = "language_far"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/ir.png"
        LANGUAGE.format = "%s speaks in farsi \"%s\""
        LANGUAGE.formatUnknown = "%s says something in farsi"

        LANGUAGE.formatWhispering = "%s whispers in farsi \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in farsi"

        LANGUAGE.formatYelling = "%s yelling in farsi \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in farsi"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Malay"
        LANGUAGE.uniqueID = "language_mal"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/my.png"
        LANGUAGE.format = "%s speaks in malay \"%s\""
        LANGUAGE.formatUnknown = "%s says something in malay"

        LANGUAGE.formatWhispering = "%s whispers in malay \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in malay"

        LANGUAGE.formatYelling = "%s yelling in malay \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in malay"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Swahili"
        LANGUAGE.uniqueID = "language_swa"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/ke.png"
        LANGUAGE.format = "%s speaks in swahili \"%s\""
        LANGUAGE.formatUnknown = "%s says something in swahili"

        LANGUAGE.formatWhispering = "%s whispers in swahili \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in swahili"

        LANGUAGE.formatYelling = "%s yelling in swahili \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in swahili"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Urdu"
        LANGUAGE.uniqueID = "language_urd"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/ly.png"
        LANGUAGE.format = "%s speaks in urdu \"%s\""
        LANGUAGE.formatUnknown = "%s says something in urdu"

        LANGUAGE.formatWhispering = "%s whispers in urdu \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s whispers something in urdu"

        LANGUAGE.formatYelling = "%s yelling in urdu \"%s\""
        LANGUAGE.formatYellingUnknown = "%s yelling something in urdu"
    LANGUAGE:Register()
end