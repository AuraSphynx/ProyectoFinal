extends CanvasLayer

export (String, FILE, "*.json") var d_file

var dialogo = []
var current_dialogo_id = 0
var d_active = false

func _ready():
	$NinePatchRect.visible = false
	
	
func start():
	if d_active:
		return
	d_active = true
	$NinePatchRect.visible = true
	
	dialogo = load_dialogo()
	current_dialogo_id = -2
	next_script()
	

func load_dialogo():
	var file = File.new()
	
	if  file.file_exists(d_file):
		file.open(d_file, file.READ)
		return parse_json(file.get_as_text())

func _input(event):
	if not d_active:
		return
	if event.is_action_pressed("aceptar"):
		next_script()

func next_script():
	current_dialogo_id += 1
	
	if current_dialogo_id >= len(dialogo):
		$Timer.start()
		$NinePatchRect.visible = false
		return
		
	$NinePatchRect/Nombre.text = dialogo[current_dialogo_id]['name']
	$NinePatchRect/Chat.text = dialogo[current_dialogo_id]['text']

# Tiempo
func _on_Timer_timeout():
	d_active = false
