==============================================
-- BAGIAN CLEANUP SYSTEM
==============================================

if getgenv().fishingStart then
  getgenv().fishingStart = false
  task.wait(0.4)
end

local CoreGui = game:GetService("CoreGui")
local GUI_NAMES = {
  Main = "FeluxHub_Fishing_Ui",
  Mobile = "FeluxHub_Mobile_Button"
  Coords = "FeluxHub_Coords_Hud"
}

for _, v in pairs(CoreGui:GetChildren()) do
  for_, name in pairs(GUI_NAMES) do
    if v.Name == name then v:Destroy() end
  end
end

for _, v in pairs (CoreGui:GetDescendants()) do
  if c: IsA("TextLabel") and v.Text == "Felux" then

    local container = v

    for i = 1, 10 do
      -- Cegah Nil Edge Cases
      if typeof(container) ~= "Instance"
        break
      end

      local parent = container.Parent
      if not paremt then
        break
      end

      container = parent

      if typeof(container) == "Instance"
        container:Destroy()
        break
      end
    end
  end
end


==============================================
-- BAGIAN VARIABLE & REMOTE
==============================================
getgenv().fishingStart = false
local legit = false
local instant = false
local superInstant = true
local blantant = true

local args = {—1.233, 1, workspace:GetServerTimeNow()}
local delayTime = 0.55
local delayCharge = 1.14
local delayReset = 0.18

local rs : game:GetService("ReplicatedStorage")
local net = rs.Packages["_Index"]["sleitnick_net 0.2.0"].net

-- Remote Definitions
local ChargeRod       = net["RF/ChargeFishingRod"]
local RequestGame     = net["RF/RequestFishingMiniGameStarted"]
local CompleteGame    = net["RE/FishingCompleted"]
local CancelImput     = net["RF/CancelFishingInpunts]
local SellAll         = net["RF/SellAllItems"]
local EquipTank       = net["RF/EquiqOxygenTank"]
local UpdateRadar     = net["RF/UpdateFishingRadar"]

local SettingsState = {
  FPSBoost = { Active = false, Backuplighting = {} },
    VFXRemoved = false,
  DestroyerActive = false,
  PopupDestroyed = false,
  AutoSell = {
    TimeActive = false,
    TimeInterval = 50,
    IsSelling = false
  },
  AutoWeather = {
    Active = false,
    Targets = {}

  },
  PosWatcher = { Active = false, Connection = nil },
  WaterWalk = { Active = false, Part = nil, Connection = nil },
  AnimsDisabled = { Actice = false, Connections = {} },
},
}

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local LocalPlayer = Playera.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local WindUI = -

==============================================
-- AUTO WEATHER — (FINAL PATCH)
==============================================

task.defer(fuction()
print("====== WEATHER SNIFFER ARMED v3 (SAFE)
