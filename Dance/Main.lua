
local filesystem = require("Filesystem")
local screen = require("Screen")
local color = require("Color")
local image = require("Image")
local GUI = require("GUI")
local system = require("System")

------------------------------------------------------------------------------------------

local spinnersPath = filesystem.path(system.getCurrentScript())
local spinners = {}
local currentSpinner = 1
local spinnerLimit = 8
local spinnerHue = math.random(0, 360)
local spinnerHueStep = 20

local workspace = GUI.workspace()
workspace:addChild(GUI.panel(1, 1, workspace.width, workspace.height, 0x0))
local spinnerImage = workspace:addChild(GUI.image(1, 1, {1, 1}))

------------------------------------------------------------------------------------------




------------------------------------------------------------------------------------------

for i = 1, spinnerLimit do
	spinners[i] = image.load(spinnersPath .. i .. ".pic")
end
spinnerImage.width = image.getWidth(spinners[currentSpinner])
spinnerImage.height = image.getHeight(spinners[currentSpinner]) 
spinnerImage.localX = math.floor(workspace.width / 2 - spinnerImage.width / 2)
spinnerImage.localY = math.floor(workspace.height / 2 - spinnerImage.height/ 2)

changeColor(spinnerHue, 1)
screen.flush()
workspace:draw()

workspace:start(0)








