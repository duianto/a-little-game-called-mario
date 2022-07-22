tool
extends Control

export var text = "Tab" setget _set_text
onready var texture_rect: TextureRect = $HBoxContainer/TextureRect

func _ready() -> void:
	texture_rect.modulate.a = 0

func _set_text(new_text):
	text = str(new_text)
	$HBoxContainer/Label.text = str(new_text)

func selected():
	modulate.v = 1
	texture_rect.modulate.a = 1

func deselected():
	modulate.v = 0.66
	texture_rect.modulate.a = 0

func _on_Tab_focus_entered() -> void:
	texture_rect.modulate.a = 1


func _on_Tab_focus_exited() -> void:
	texture_rect.modulate.a = 0
