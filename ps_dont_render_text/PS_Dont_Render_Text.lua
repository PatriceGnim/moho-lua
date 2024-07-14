ScriptName  = "PS_Dont_Render_Text"

PS_Dont_Render_Text = {}

function PS_Dont_Render_Text:Name()
    return "PS_Dont_Render_Text"
end

function PS_Dont_Render_Text:UILabel()
    return("Dont Render text layers")
end

function PS_Dont_Render_Text:Version()
    return "1.0"
end

function PS_Dont_Render_Text:ColorizeIcon()
	return true
end

function PS_Dont_Render_Text:IsRelevant(moho)
    return true
end


function PS_Dont_Render_Text:Run(moho)
	local count = 0
	repeat
		local layer = moho.document:LayerByAbsoluteID(count)
		if layer then
			count = count + 1

			if layer:LayerType() == MOHO.LT_TEXT then
				-- print((layer:Name()))
				layer:SetEditOnly(true)
			end


		end
	until not layer
end
