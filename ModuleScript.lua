warn("test")

local CoreGui = game:GetService("CoreGui")

do
	local OldUI = CoreGui:FindFirstChild("AutoBuildGui")
	if OldUI then
		OldUI:Destroy()
	end
end

warn('\n\n\nThanks for using RetroStudio Auto Build by Att#7148! \n\n\nPress the insert key to toggle the ui.')

local UIS = game:GetService('UserInputService')
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RemoteFunctions = ReplicatedStorage.RemoteFunctions
local RemoteEvents = ReplicatedStorage.RemoteEvents

local CreateObjectEvent = RemoteFunctions.CreateObject
local ObjectPropertyChangeRequestEvent = RemoteEvents.ObjectPropertyChangeRequested

local AutoBuildGui, MainFrame, TitleLabel, ModelBox, NameBox, StartButton = loadstring(game:HttpGet("https://pastebin.com/raw/iqqyYSsa"))()()
local Properties = HttpService:JSONDecode(game:HttpGet("https://pastebin.com/raw/TFSU2s5e"))
local BlacklistedProperties = {}

function fetchProperties(classToCollect: string)
	local myProps: {string} = {}
	local apiDumpClasses = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Mancraze/RobloxInstancesProperties/main/Text")).Classes
	local found = false

	repeat found = false
		for _, class in pairs(apiDumpClasses) do
			if class.Name ~= classToCollect then continue end
			for _, member in pairs(class.Members) do
				if member.MemberType == "Property" then
					table.insert(myProps,member.Name)
				end
			end
			classToCollect = class.Superclass
			found = true
		end
		assert(found,"Class not found: "..classToCollect)
	until classToCollect == "<<<ROOT>>>"

	return myProps
end


local function GetProperties(Object: Instance)
	local ClassName = Object.ClassName
	
	if Properties[ClassName] then
		return Properties[ClassName]
	end
	
	local Properties = fetchProperties(ClassName)
	Properties[ClassName] = Properties
	return Properties
end

local function CreateNewInstance(ClassName: string, Parent: Instance)
	local Success, Result = pcall(CreateObjectEvent.InvokeServer, CreateObjectEvent, ClassName, Parent)
	return Result
end

local function SetInstanceProperty(Object: Instance, PropertyName: string, NewValue: any)
	ObjectPropertyChangeRequestEvent:FireServer(Object, PropertyName, NewValue)
end

local function ScanModel(Model, ServerParent)
	for _,Child in ipairs(Model:GetChildren()) do
		local Properties = GetProperties(Child)
		
		if not Properties then
			warn(Child.ClassName.." is invalid!")
			continue
		end

		if not ServerParent then
			ServerParent = CreateNewInstance(Model.ClassName, workspace)
			SetInstanceProperty(ServerParent, "Name", Model.Name)
		end

		local NewObject = CreateNewInstance(Child.ClassName, ServerParent)

		for _,Property in ipairs(Properties) do
			pcall(function()
				SetInstanceProperty(NewObject, Property, Child[Property])
				print(Property)
			end)
		end

		ScanModel(Child, NewObject)
	end
end

local function GetAssets(AssetId: string | number)
	local Model = game:GetObjects("rbxassetid://"..AssetId)

	if not Model then return end

	Model = Model[1]

	for _,Object in ipairs(Model:GetDescendants()) do
		if Object:IsA("BasePart") then
			Object.Anchored = true
		end
	end

	return Model
end

local function Start(AssetId: string | number, ModelName: string)
	local Model = GetAssets(AssetId)

	if not Model then return end

	Model.Name = ModelName

	ScanModel(Model)

	Model:Destroy()
end

local function Init()
	local AssetId = tonumber(ModelBox.Text) or 0
	local ModelName = tostring(NameBox.Text) or 'Model'
	Start(AssetId, ModelName)
end

print(AutoBuildGui, MainFrame, TitleLabel, ModelBox, NameBox, StartButton)

StartButton.Activated:Connect(Init)

Start(9441839065 ,"PermaLobby")

return {}
