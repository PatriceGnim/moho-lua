ScriptName  = "PS_ImmuneToCamera"

PS_ImmuneToCamera = {}

function PS_ImmuneToCamera:Name()
    return "PS_Immune To Camera"
end

function PS_ImmuneToCamera:UILabel()
    return("Immune Selected To Camera")
end

function PS_ImmuneToCamera:Version()
    return "1.0"
end

function PS_ImmuneToCamera:ColorizeIcon()
	return true
end

function PS_ImmuneToCamera:IsRelevant(moho)
    return true
end


function PS_ImmuneToCamera:Run(moho)
	local doc = moho.document
	local selectedLayer = doc:GetSelectedLayer(0)
	local checked = selectedLayer:IsImmuneToCamera()
	
	if checked then
		selectedLayer:SetImmuneToCamera(false)
	else 
		selectedLayer:SetImmuneToCamera(true)
	end
	
end
