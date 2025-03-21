ITEM.name = "Патроны 7.62x54 мм (ЛПС гж)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 7.62х54ммR ЛПС гж (Индекс ГРАУ - 57-Н-323С) с пулей массой 24 грамм со стальным сердечником, в биметаллической оболочке, в биметаллической гильзе. Патрон ЛПС (Легкая Пуля со Стальным сердечником) был принят на вооружение в 1953 году для советского оружия 7.62x54 ммR, и за эти годы претерпел множество изменений в материалах изготовления. Благодаря стальному сердечнику, пуля обладает хорошей бронепробиваемостью против базового и среднего уровня защиты и значительным останавливающим воздействием, однако она имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "7.62x54hpmm"
ITEM.model = "models/lostsignalproject/items/ammo/762x54.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 20

ITEM.price = 1260

ITEM.weight = 0.024
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон калибра 7.62x54 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит винтовочную гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end