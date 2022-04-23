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
	["LocalScript"] = {
		"Disabled"
	},
	["Script"] = {
		"Disabled"
	},
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
	},
	["Animation"] = {
		"AnimationId"
	},
	["Weld"] = {
		"Part0",
		"Part1",
	},
	["Accoutrement"] = {
		"AttachmentForward",
		"AttachmentPos",
		"AttachmentRight",
		"AttachmentUp"
	},
	["BindableEvent"] = {},
	["BindableFunction"] = {},
	["BodyAngularVelocity"] = {
		"P",
		"angularvelocity",
		"maxTorque"
	},
	["Body Colors"] = {
		"HeadColor",
		"LeftArmColor",
		"LeftLegColor",
		"RightArmColor",
		"RightLegColor",
		"TorsoColor"
	},
	["BodyForce"] = {
		"force"
	},
	["BodyGyro"] = {
		"D",
		"P",
		"maxTorque"
	},
	["BodyPosition"] = {
		"D",
		"P",
		"maxForce",
		"position"
	},
	["BodyThrust"] = {
		"force",
		"location"
	},
	["BodyVelocity"] = {
		"P",
		"maxForce",
		"velocity"
	},
	["CharacterMesh"] = {
		"BaseTextureId",
		"BodyPart",
		"MeshId",
		"OverlayTextureId"
	},
	["Tool"] = {
		"GripForward",
		"GripPos",
		"GripRight",
		"GripUp",
		"ToolTip",
		"TextureId",
		"CanBeDropped",
		"RequiresHandle",
		"Enabled"
	},
	["Team"] = {
		"AutoAssignable",
		"TeamColor"
	},
	["StarterGear"] = {},
	["SpawnLocation"] = {},
	["SurfaceSelection"] = {
		"Color3",
		"Transparency",
		"TargetSurface",
		"Visible"
	},
	["Configuration"] = {},
	["ClickDetector"] = {
		"MaxActivationDistance"
	},
	["Dialog"] = {
		"ConversationDistance",
		"InUse",
		"Purpose",
		"Tone"
	},
	["DialogChoice"] = {},
	["Flag"] = {
		"GripForward",
		"GripPos",
		"GripRight",
		"GripUp",
		"ToolTip",
		"TeamColor",
		"TextureId",
		"CanBeDropped",
		"RequiresHandle",
		"Enabled"
	},
	["FlagStand"] = {
		"BrickColor",
		"Material",
		"Reflectance",
		"Transparency",
		"TeamColor",
		"Velocity",
		"Anchored",
		"CanCollide",
		"Locked",
		"FormFactor",
		"Shape",
		"BackParamA",
		"BackParamB",
		"BackSurfaceInput",
		"BottomParamA",
		"BottomParamB",
		"BottomSurfaceInput",
		"FrontParamA",
		"FrontParamB",
		"FrontSurfaceInput",
		"LeftParamA",
		"LeftParamB",
		"LeftSurfaceInput",
		"RightParamA",
		"RightParamB",
		"RightSurfaceInput",
		"TopParamA",
		"TopParamB",
		"TopSurfaceInput",
		"BackSurface",
		"BottomSurface",
		"FrontSurface",
		"LeftSurface",
		"RightSurface",
		"TopSurface",
		"CFrame"
	},
	["Folder"] = {},
	["ForceField"] = {},
	["Hat"] = {
		"AttachmentForward",
		"AttachmentPos",
		"AttachmentRight",
		"AttachmentUp"
	},
	["Message"] = {
		"Text"
	},
	["Sparkles"] = {
		"SparkleColor"
	},
	["Sound"] = {
		"Looped",
		"Pitch",
		"Playing",
		"SoundId",
		"Volume"
	},
	["Sky"] = {
		"CelestialBodiesShown",
		"MoonAngularSize",
		"MoonTextureId",
		"SkyboxBk",
		"SkyboxDn",
		"SkyboxFt",
		"SkyboxLf",
		"SkyboxRt",
		"SkyboxUp",
		"StarCount",
		"SunAngularSize",
		"SunTextureId",
	},
	["Skin"] = {
		"SkinColor"
	},
	["ShirtGraphic"] = {
		"Color3",
		"Graphic"
	},
	["SelectionBox"] = {
		"Color3",
		"LineThickness",
		"SurfaceColor3",
		"SurfaceTransparency",
		"Transparency",
		"Visible"
	},
	["Humanoid"] = {
		"Health",
		"JumpPower",
		"MaxHealth",
		"WalkSpeed",
		"Jump",
		"PlatformStand",
		"Sit",
		"TargetPoint",
		"WalkToPoint"
	},
	["ManualWeld"] = {
		"Part0",
		"Part1"
	},
	["RocketPropulsion"] = {
		"CartoonFactor",
		"TargetOffset",
		"TargetRadius",
		"MaxSpeed",
		"MaxThrust",
		"ThrustD",
		"ThrustP",
		"MaxTorque",
		"TurnD",
		"TurnP"
	},
	["Pants"] = {
		"Color3",
		"PantsTemplate"
	},
	["Motor"] = {
		"CurrentAngle",
		"DesiredAngle",
		"MaxVelocity",
		"Enabled"
	}
}

Properties.WedgePart = Properties.BasePart
Properties.Part = Properties.BasePart
Properties.CornerWedge = Properties.BasePart

Properties.Seat = Properties.BasePart
Properties.Truss = Properties.BasePart
Properties.VehicleSeat = Properties.BasePart
Properties.SpawnLocation = Properties.BasePart
Properties.CylinderMesh = Properties.Mesh

Properties.Vector3Value = Properties.StringValue
Properties.NumberValue = Properties.StringValue
Properties.IntValue = Properties.StringValue
Properties.BoolValue = Properties.StringValue
Properties.BrickColorValue = Properties.StringValue

Properties.Hint = Properties.Message

for _,Properties2 in ipairs(Properties) do
	table.insert(Properties2, "Name")
end

return Properties