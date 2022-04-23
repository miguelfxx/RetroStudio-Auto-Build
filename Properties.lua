local Properties = {
	["BasePart"] = {
		"BrickColor", "CanCollide", "Anchored", "Locked", "Velocity", "Transparency", "Reflectance", "Material",
		"BackSurface", "BottomSurface", "FrontSurface", "LeftSurface", "RightSurface", "TopSurface",  "Name", "CFrame", "Size"
	},
	["PointLight"] = {
		"Brightness", "Color", "Range", "Shadows"
	},
	["SurfaceLight"] = {
		"Angle", "Brightness", "Color", "Enabled", "Face", "Range", "Shadows"
	},
	["Smoke"] = {
		"Color", "Opacity", "Size", "RiseVelocity"
	},
	["Fire"] = {
		"Color", "Heat", "Size", "SecondaryColor"
	},
	["Decal"] = {
		"Texture", "Transparency", "Color3", "Face"
	},
	["Texture"] = {
		"Texture", "Transparency", "Color3", "Face", "OffsetStudsU", "OffsetStudsV", "StudsPerTileU", "StudsPerTileV",
	},
	["Mesh"] = {
		"Offset", "Scale", "VertexColor"
	},
	["Shirt"] = {
		"ShirtTemplate"
	},
	["LocalScript"] = {},
	["Script"] = {},
	["ClickDetector"] = {},
	["Model"] = {},
	["ObjectValue"] = {},
	["SpecialMesh"] = {
		"MeshId",
		"TextureId",
		"MeshType",
		"Scale",
		"Offset",
		"VertexColor"
	},
	["StringValue"] = {
		"Value"
	}
}

Properties.WedgePart = Properties.BasePart
Properties.Part = Properties.BasePart

Properties.Seat = Properties.BasePart
Properties.SpawnLocation = Properties.BasePart
Properties.CylinderMesh = Properties.Mesh

Properties.Vector3Value = Properties.StringValue
Properties.NumberValue = Properties.StringValue
Properties.NumberValue = Properties.StringValue
Properties.IntValue = Properties.StringValue
Properties.BoolValue = Properties.StringValue

return Properties
