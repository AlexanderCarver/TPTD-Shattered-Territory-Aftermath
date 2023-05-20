ITEM.name = "Цинк с патронами 7.62x51 мм NATO"
ITEM.description = ""
ITEM.longdesc = "Стандартный винтовочно-пулемётный боеприпас стран — участниц НАТО. Принят в 1954 году под обозначением T65, впоследствии неоднократно модернизирован. Этот патрон разрабатывался после Второй мировой войны как облегчённый вариант устаревшего .30-06, в расчёте на достижение той же баллистики и энергетики боеприпаса при уменьшении его размеров за счёт меньшего по массе заряда более мощного и современного пороха в уменьшенной гильзе."
ITEM.model = "models/lostsignalproject/items/misc/small_case.mdl"
ITEM.useSound = "weapons/cloth3.wav"

ITEM.ammoAmount = 400 -- Количество патриков в коробке.
ITEM.price = 19440 --Цена.
ITEM.ammo = "7.62x51mm" --Сами патрики.
ITEM.model = "models/lostsignalproject/items/misc/small_case.mdl"

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Винтовочный патрон калибра 7.62x51 мм NATO", Color(64, 224, 208))
    ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
    ix.util.PropertyDesc(tooltip, "Содержит гильзу", Color(64, 224, 208))
end

--Эту функцию не трогай. Ежжи.
ITEM.functions.use = {
    name = "Зарядить магазин",
    icon = "icon16/stalker/load.png",
    OnRun = function(item)
    local rounds = item:GetData("rounds", item.ammoAmount)

    ix.util.PlayerPerformBlackScreenAction(item.player, "Заряжаем магазин...", 8, function(player) 
      ix.chat.Send(player, "me", "заряжает магазины патронами 5.45x39 мм.")
    end)
      item.player:GiveAmmo(rounds, item.ammo)
      item.player:EmitSound(item.useSound, 110)
    return true
  end,
}