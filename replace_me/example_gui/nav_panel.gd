# nav_panel.gd
# This file is part of I, Voyager (https://ivoyager.dev)
# *****************************************************************************
# Copyright (c) 2017-2020 Charlie Whitfield
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# *****************************************************************************
# You can modify widgets or set widget init values in _ready() here. The
# NavPanel mainly fits to the SystemNavigator & AsteroidGroupButtons widgets,
# which have their own GUI size presets. Other content is strategically
# placed above and below planets and mooons and can adapt to panel size.

extends PanelContainer

func _ready() -> void:
#	Global.connect("gui_refresh_requested", self, "_resize_to_corner")
#	Global.connect("setting_changed", self, "_settings_listener")
	# widget mods here (if any)
	# additional new node (non-widget) hookups
	$BottomVBox/HBox/Hotkeys.connect("pressed", Global, "emit_signal", ["hotkeys_requested"])
	$BottomVBox/HBox/MainMenu.connect("pressed", Global, "emit_signal", ["open_main_menu_requested"])
	

#func _resize_to_corner() -> void:
#	yield(get_tree(), "idle_frame") # wait for content to resize
#	set_anchors_and_margins_preset(PRESET_BOTTOM_RIGHT, PRESET_MODE_MINSIZE)
#	yield(get_tree(), "idle_frame")
#	print("NavPanel size: ", rect_size)
#
#func _settings_listener(setting: String, _value) -> void:
#	match setting:
#		"gui_size":
#			_resize_to_corner()
