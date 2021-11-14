
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

function PLUGIN:InitializedPlugins()
    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Украинский язык"
        LANGUAGE.uniqueID = "language_ukrainian"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/ua.png"
        LANGUAGE.format = "%s говорит на украинском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на украинском языке, но Вы ничего не поняли"
    
        LANGUAGE.formatWhispering = "%s шепчет на украинском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на украинском языке, но Вы ничего не поняли"
    
        LANGUAGE.formatYelling = "%s кричит на украинском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на украинском языке, но Вы ничего не поняли"
    LANGUAGE:Register()

    function PLUGIN:InitializedPlugins()
    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Белорусский язык"
        LANGUAGE.uniqueID = "language_belarusian"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/rb.png"
        LANGUAGE.format = "%s говорит на белорусском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на белорусском языке, но Вы ничего не поняли"
        
        LANGUAGE.formatWhispering = "%s шепчет на белорусском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на белорусском языке, но Вы ничего не поняли"
        
        LANGUAGE.formatYelling = "%s кричит на белорусском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на белорусском языке, но Вы ничего не поняли"
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
        LANGUAGE.uniqueID = "language_hindi"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/in.png"
        LANGUAGE.format = "%s говорит на хинди \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на языке хинди, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на хинди \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на языке хинди, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на хинди \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на языке хинди, но Вы ничего не поняли"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Бенгальский язык"
        LANGUAGE.uniqueID = "language_bengali"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/bd.png"
        LANGUAGE.format = "%s говорит на бенгальском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на бенгальском языке, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на бенгальском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на бенгальском языке, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на бенгальском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на бенгальском языке, но Вы ничего не поняли"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Французский язык"
        LANGUAGE.uniqueID = "language_french"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/fr.png"
        LANGUAGE.format = "%s говорит на французском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на французском языке, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на французском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на французском языке, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на французском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на французском языке, но Вы ничего не поняли"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Итальянский язык"
        LANGUAGE.uniqueID = "language_italian"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/it.png"
        LANGUAGE.format = "%s говорит на итальянском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на итальянском языке, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на итальянском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на итальянском языке, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на итальянском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на итальянском языке, но Вы ничего не поняли"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Японский язык"
        LANGUAGE.uniqueID = "language_japan"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/jp.png"
        LANGUAGE.format = "%s говорит на японском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на японском языке, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на японском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на японском языке, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на японском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на японском языке, но Вы ничего не поняли"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Китайский язык"
        LANGUAGE.uniqueID = "language_chinese"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/ch.png"
        LANGUAGE.format = "%s говорит на китайском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на китайском языке, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на китайском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на китайском языке, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на китайском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на китайском языке, но Вы ничего не поняли"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Португальский язык"
        LANGUAGE.uniqueID = "language_portuguese"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/pt.png"
        LANGUAGE.format = "%s говорит на португальском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на португальском языке, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на португальском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на португальском языке, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на португальском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на португальском языке, но Вы ничего не поняли"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Испанский язык"
        LANGUAGE.uniqueID = "language_spanish"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/es.png"
        LANGUAGE.format = "%s говорит на испанском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на испанском языке, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на испанском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на испанском языке, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на испанском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на испанском языке, но Вы ничего не поняли"
    LANGUAGE:Register()

    local LANGUAGE = ix.languages:New()
        LANGUAGE.name = "Малайский язык"
        LANGUAGE.uniqueID = "language_malay"
        LANGUAGE.category = "Human"
        LANGUAGE.chatIcon = "flags16/my.png"
        LANGUAGE.format = "%s говорит на малайском \"%s\""
        LANGUAGE.formatUnknown = "%s говорит что-то на малайском языке, но Вы ничего не поняли"

        LANGUAGE.formatWhispering = "%s шепчет на малайском \"%s\""
        LANGUAGE.formatWhisperingUnknown = "%s шепчет что-то на малайском языке, но Вы ничего не поняли"

        LANGUAGE.formatYelling = "%s кричит на малайском \"%s\""
        LANGUAGE.formatYellingUnknown = "%s кричит что-то на малайском языке, но Вы ничего не поняли"
    LANGUAGE:Register()
end