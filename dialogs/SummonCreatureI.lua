require "engine.class"
local Dialog = require "engine.ui.Dialog"
local List = require "engine.ui.List"

module(..., package.seeall, class.inherit(Dialog))

function _M:init(talent)
	self.talent = talent
	self:generateList()

	Dialog.init(self, "Summon Creature I", 300, 20)

	self.c_list = List.new{width=self.iw, nb_items=#self.list, list=self.list, fct=function(item) self:use(item) end}

	self:loadUI{
		{left=0, top=0, ui=self.c_list},
	}
	self:setFocus(self.c_list)
	self:setupUI(false, true)

	self.key:addBinds{
		EXIT = function() game:unregisterDialog(self) end,
	}
end

function _M:use(item)
	if self.talent then self.talent.creature = item.name end
	game:unregisterDialog(self)
	
end

function _M:generateList()
	local list = {{name="Wolf"}, {name="Bear"}, {name="Rat"}, {name="Badger"}}
	self.list = list
end
