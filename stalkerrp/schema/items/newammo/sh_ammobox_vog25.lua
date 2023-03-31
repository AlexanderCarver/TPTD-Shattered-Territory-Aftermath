ITEM.name = "Граната ВОГ-25"
ITEM.description = ""
ITEM.quantdesc =  "Количество гранат: %s штук. "
ITEM.longdesc = "Осколочный боеприпас для гранатомётов ГП-25. Граната дульнозарядная, то есть подаётся в ствол через дульный срез. Снаружи корпуса имеются готовые нарезы, придающие гранате вращательное движение во время движения по каналу ствола. Выстрел выполнен по «безгильзовой» схеме."

ITEM.ammo = "vog25"
ITEM.model = "models/kali/weapons/mgsv/magazines/ammunition/40mm grenade.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 1

ITEM.price = 450

ITEM.weight = 0.280
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Гранатомётный выстрел", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end