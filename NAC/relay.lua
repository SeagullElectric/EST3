-- Functions to copy values from CodingOptions to the Relay outputs
local function UpdateAudible()
	script.Parent.AudibleCircuit.Value = script.Parent.CodingOptions.Coding.Value
end

local function UpdateVisual()
	script.Parent.VisualCircuit.Value = script.Parent.CodingOptions.VisualCoding.Value
end

-- Listen for changes in CodingOptions and trigger the copy
script.Parent.CodingOptions.Coding.Changed:Connect(UpdateAudible)
script.Parent.CodingOptions.VisualCoding.Changed:Connect(UpdateVisual)

-- Run once at start to sync current state
UpdateAudible()
UpdateVisual()
