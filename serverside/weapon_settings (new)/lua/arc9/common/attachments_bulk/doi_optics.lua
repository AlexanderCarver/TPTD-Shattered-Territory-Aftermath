local ATT = {}

ATT.PrintName = [[7x Scope]]
ATT.CompactName = "7x"
ATT.Description = [[Magnified optic for the Kar98k.]]
ATT.Icon = Material("entities/arc9_att_doi_optic_k98_7x.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = "doi_optic_k98"

ATT.Model = "models/weapons/arc9_doi/atts/a_optic_kar98k.mdl"
ATT.ModelOffset = Vector(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(0, 12, -1.61992 * 1.3),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 40
    }
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeFOV = 4
ATT.RTScopeReticle = Material("models/weapons/arc9_doi/optics/kar98k_crosshair")
ATT.RTScopeColorable = false
ATT.RTScopeShadowIntensity = 10

ATT.ScopeScreenRatio = 0.5

ATT.AimDownSightsTimeMult = 1.2

ARC9.LoadAttachment(ATT, "doi_optic_k98_7x")

ATT = {}

ATT.PrintName = [[4x Scope]]
ATT.CompactName = "4x"
ATT.Description = [[Magnified optic for a variety of German rifles.]]
ATT.Icon = Material("entities/arc9_att_doi_optic_zf4.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_optic_k98_4x", "doi_optic_k98_zf4"}

ATT.Model = "models/weapons/arc9_doi/atts/a_optic_kar98k_4x.mdl"
ATT.ModelOffset = Vector(0, 0, 0)

ATT.InvAtt = "doi_optic_zf4"

ATT.Sights = {
    {
        Pos = Vector(0.438904  * 1.3, 8, -1.3409 * 1.3),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 40,
    }
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 8
ATT.RTScopeReticle = Material("models/weapons/arc9_doi/optics/zf4_crosshair")
ATT.RTScopeColorable = false
ATT.RTScopeShadowIntensity = 7.5

ATT.ScopeScreenRatio = 0.5

ATT.AimDownSightsTimeMult = 1.1

ARC9.LoadAttachment(ATT, "doi_optic_k98_4x")

ATT = {}

ATT.PrintName = [[4x Scope]]
ATT.CompactName = "4x"
ATT.Description = [[Magnified optic for a variety of German rifles.]]
ATT.Icon = Material("entities/arc9_att_doi_optic_zf4.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = "doi_optic_zf4"

ATT.Model = "models/weapons/arc9_doi/atts/a_optic_zf4.mdl"
ATT.ModelOffset = Vector(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(-0.336571, 4, -0.300198) * 1.3,
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 40,
    }
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeFOV = 8
ATT.RTScopeReticle = Material("models/weapons/arc9_doi/optics/zf4_crosshair")
ATT.RTScopeColorable = false
ATT.RTScopeShadowIntensity = 7.5

ATT.ScopeScreenRatio = 0.5

ATT.AimDownSightsTimeMult = 1.1

ARC9.LoadAttachment(ATT, "doi_optic_zf4")