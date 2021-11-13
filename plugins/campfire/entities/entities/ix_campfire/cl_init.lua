include("shared.lua");

-- Called when the entity should draw.
function ENT:Draw()
	self:DrawModel();
end;

-- Called when the entity should think.
function ENT:Think()
	if IsValid(self) then
		self.dlight = DynamicLight( self:EntIndex() );
		
		if ( self.dlight ) then
			local r, g, b, a = self:GetColor();
			self.dlight.Pos = self:GetPos() + Vector(0,0,20);
			self.dlight.r = 255;
			self.dlight.g = 200;
			self.dlight.b = 15;
			self.dlight.Brightness = 1;
			self.dlight.Size = 1000;
			self.dlight.Decay = 7;
			self.dlight.DieTime = CurTime() + 5;
		end;	
	end
end;