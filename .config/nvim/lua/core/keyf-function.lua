-- function for jumping defferent opened tabs in lvim
function JumpToTap()
	local tabNum = vim.fn.input("😋 Enter you tab:")

	if tabNum ~= "" then
		vim.cmd(":bn" .. tabNum)
	else
		vim.cmd(":bp")
	end
end
