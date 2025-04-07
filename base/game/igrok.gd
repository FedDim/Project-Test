extends CharacterBody2D

const  SKOROST = 300

func _physics_process(_delta: float) -> void:
	velocity = Vector2(
		Input.get_axis("Levo", "Pravo"), 
		Input.get_axis("Verh", "Niz")
	).normalized() * SKOROST
	move_and_slide()
	
	if Input.is_action_pressed("Levo"):
		$AnimatedSprite2D.play("z")
	if Input.is_action_pressed("Pravo"):
		$AnimatedSprite2D.play("v")
	if Input.is_action_pressed("Niz"):
		$AnimatedSprite2D.play("u")
	if Input.is_action_pressed("Verh"):
		$AnimatedSprite2D.play("s")
	
	if Input.is_action_pressed("Levo") and Input.is_action_pressed("Verh"):
		$AnimatedSprite2D.play("sz")
	if Input.is_action_pressed("Pravo") and Input.is_action_pressed("Verh"):
		$AnimatedSprite2D.play("sv")
	if Input.is_action_pressed("Levo") and Input.is_action_pressed("Niz"):
		$AnimatedSprite2D.play("uz")
	if Input.is_action_pressed("Pravo") and Input.is_action_pressed("Niz"):
		$AnimatedSprite2D.play("uv")
