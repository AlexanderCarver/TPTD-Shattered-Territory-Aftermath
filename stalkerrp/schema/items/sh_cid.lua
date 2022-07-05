ITEM.name = "Планшет с 'Corporate Internal Pass'"
ITEM.model = "models/lt_c/sci_fi/holo_tablet.mdl"
ITEM.description = "Специальный планшет из современных материалов и крайне удобным оформлением, который имеет все необходимое в своей основе. На данный момент в нем находится чип со следующим корпоративным номером: |%s|. На данный момент его владельцем числится %s."
ITEM.width = 1
ITEM.height = 1

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "0000"), self:GetData("name", "nobody"))
end
