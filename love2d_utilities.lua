local lib = {}

lib.debugGPU = {
    active = false,
    font = nil,
    font_size = 15
}

function lib.debugGPU:setFont(font, size)
    self.font = font
    self.font_size = size
end

function lib.debugGPU:draw()
	if not self.active then return end
    local DEF_FONT = self.font
    local DEF_FONT_SIZE = self.font_size

	local stats = love.graphics.getStats( )

	if DEF_FONT then love.graphics.setFont(DEF_FONT) end

	love.graphics.setColor(1,0, 1, 0.9)
	love.graphics.print(string.format("Texture Memory: %.2f MB", stats.texturememory / 1024 / 1024), 10, 10 )
	love.graphics.print(string.format("Canvas Switches: %f", stats.canvasswitches), 10, 10 + DEF_FONT_SIZE*2 )
	love.graphics.print(string.format("Images: %.2f", stats.images ), 10, 10 + DEF_FONT_SIZE*3 )
	love.graphics.print(string.format("Canvases: %.2f", stats.canvases ), 10, 10 + DEF_FONT_SIZE*4 )
	love.graphics.print(string.format("Fonts: %.2f", stats.fonts ), 10, 10 + DEF_FONT_SIZE*5 )
	love.graphics.print(string.format("Shader Switches: %.2f", stats.shaderswitches ), 10, 10 + DEF_FONT_SIZE*6 )
	love.graphics.print(string.format("Draw Calls: %.2f", stats.drawcalls), 10, 10 + DEF_FONT_SIZE*8 )
	love.graphics.print(string.format("Draw calls batched: %.2f", stats.drawcallsbatched ), 10, 10 + DEF_FONT_SIZE*9 )

end





-----
return lib
