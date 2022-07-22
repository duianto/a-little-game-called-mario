extends HBoxContainer

signal value_changed(value)

export (NodePath) var value_label_nodepath

onready var texture_rect: TextureRect = $TextureRect
onready var value_label: Label = get_node(value_label_nodepath) as Label

func _ready() -> void:
	texture_rect.modulate.a = 0

func _on_OptionSlider_value_changed(value):
	value_label.text = str(value)
	self.emit_signal("value_changed", value)


func _on_OptionSlider_focus_entered() -> void:
	texture_rect.modulate.a = 1


func _on_OptionSlider_focus_exited() -> void:
	texture_rect.modulate.a = 0
