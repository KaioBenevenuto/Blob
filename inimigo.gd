extends RigidBody2D

@export var min_speed = 150
@export var max_speed = 300
@onready var animacao: AnimatedSprite2D = get_node('AnimatedSprite2D')

var nomes_animacoes: Array = ["voando","nadando","andando"]

func _ready():
	var tipo_inimigos = nomes_animacoes[randi() % nomes_animacoes.size()]
	animacao.play(tipo_inimigos)
	
func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
