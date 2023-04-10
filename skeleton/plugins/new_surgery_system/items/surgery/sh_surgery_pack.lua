ITEM.name = "Хирургический набор"
ITEM.description = "Таблетки в хорошо защищенной упаковке."
ITEM.longdesc = "Анальгетик и антипиретик из группы пиразолонов в ампиронсульфонатном семействе лекарств. Во многих странах изъят из оборота в связи с риском развития агранулоцитоза, однако всё ещё используется в пределах Территории."
ITEM.model = "models/illusion/eftcontainers/ifak.mdl"

ITEM.width = 2
ITEM.height = 2

ITEM.quantity = 5
ITEM.price = 0
ITEM.healAmount = 100
ITEM.medAttr = 0
ITEM.healRevive = false
ITEM.healReviveSeconds = 40

ITEM.weight = 0.0004
ITEM.flatweight = 0.010

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(0, 0, 200),
	ang = Angle(90, 0, 45),
	fov = 1.7,
}

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc2(tooltip, "Хирургия", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/hpregen.png"))
end