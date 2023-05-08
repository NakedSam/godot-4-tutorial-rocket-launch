extends Node2D

@onready var animation_player: AnimationPlayer = $RocketAnimationPlayer
@onready var launch_t_button: TextureButton = $LaunchTButton
@onready var rocket_flare_sprite: Sprite2D = $RocketSprite/RocketFlareSprite

func _ready():
	rocket_flare_sprite.hide()

func _on_launch_t_button_button_down():
	animation_player.play("launch")
	launch_t_button.hide()
	rocket_flare_sprite.show()
