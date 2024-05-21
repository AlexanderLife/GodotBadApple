extends TileMap

@onready var start_player: Timer = $StartPlayer
func _ready() -> void:
	_SetBoarder()
	for i:int in 31:
		PreLoadNext()
	start_player.start()


#region Timers-----------------------------------------------------------------#
@onready var frame_timer: Timer = $FrameTimer
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
func _on_start_player_timeout() -> void:
	frame_timer.start()
	#audio_stream_player_2d.play()
	#After you download and unzip the torrent you will be able to put the wav
	#in the Streem section.


func _on_frame_timer_timeout() -> void:
	NextFrame()
	frame_timer.start()
#endregion Timers--------------------------------------------------------------#



#region PreLoad----------------------------------------------------------------------#


#region PreLoad-Nested-Ary[1][Ary[2][Vec2i]]-----------------------------------------------#
#I know, but I dicided to do it anyway.
var _PreLoadedB000: Array[Vector2i]=[]
var _PreLoadedW000: Array[Vector2i]=[]

var _PreLoadedB001: Array[Vector2i]=[]
var _PreLoadedW001: Array[Vector2i]=[]

var _PreLoadedB002: Array[Vector2i]=[]
var _PreLoadedW002: Array[Vector2i]=[]

var _PreLoadedB003: Array[Vector2i]=[]
var _PreLoadedW003: Array[Vector2i]=[]

var _PreLoadedB004: Array[Vector2i]=[]
var _PreLoadedW004: Array[Vector2i]=[]

var _PreLoadedB005: Array[Vector2i]=[]
var _PreLoadedW005: Array[Vector2i]=[]

var _PreLoadedB006: Array[Vector2i]=[]
var _PreLoadedW006: Array[Vector2i]=[]

var _PreLoadedB007: Array[Vector2i]=[]
var _PreLoadedW007: Array[Vector2i]=[]

var _PreLoadedB008: Array[Vector2i]=[]
var _PreLoadedW008: Array[Vector2i]=[]

var _PreLoadedB009: Array[Vector2i]=[]
var _PreLoadedW009: Array[Vector2i]=[]

var _PreLoadedB010: Array[Vector2i]=[]
var _PreLoadedW010: Array[Vector2i]=[]

var _PreLoadedB011: Array[Vector2i]=[]
var _PreLoadedW011: Array[Vector2i]=[]

var _PreLoadedB012: Array[Vector2i]=[]
var _PreLoadedW012: Array[Vector2i]=[]

var _PreLoadedB013: Array[Vector2i]=[]
var _PreLoadedW013: Array[Vector2i]=[]

var _PreLoadedB014: Array[Vector2i]=[]
var _PreLoadedW014: Array[Vector2i]=[]

var _PreLoadedB015: Array[Vector2i]=[]
var _PreLoadedW015: Array[Vector2i]=[]

var _PreLoadedB016: Array[Vector2i]=[]
var _PreLoadedW016: Array[Vector2i]=[]

var _PreLoadedB017: Array[Vector2i]=[]
var _PreLoadedW017: Array[Vector2i]=[]

var _PreLoadedB018: Array[Vector2i]=[]
var _PreLoadedW018: Array[Vector2i]=[]

var _PreLoadedB019: Array[Vector2i]=[]
var _PreLoadedW019: Array[Vector2i]=[]

var _PreLoadedB020: Array[Vector2i]=[]
var _PreLoadedW020: Array[Vector2i]=[]

var _PreLoadedB021: Array[Vector2i]=[]
var _PreLoadedW021: Array[Vector2i]=[]

var _PreLoadedB022: Array[Vector2i]=[]
var _PreLoadedW022: Array[Vector2i]=[]

var _PreLoadedB023: Array[Vector2i]=[]
var _PreLoadedW023: Array[Vector2i]=[]

var _PreLoadedB024: Array[Vector2i]=[]
var _PreLoadedW024: Array[Vector2i]=[]

var _PreLoadedB025: Array[Vector2i]=[]
var _PreLoadedW025: Array[Vector2i]=[]

var _PreLoadedB026: Array[Vector2i]=[]
var _PreLoadedW026: Array[Vector2i]=[]

var _PreLoadedB027: Array[Vector2i]=[]
var _PreLoadedW027: Array[Vector2i]=[]

var _PreLoadedB028: Array[Vector2i]=[]
var _PreLoadedW028: Array[Vector2i]=[]

var _PreLoadedB029: Array[Vector2i]=[]
var _PreLoadedW029: Array[Vector2i]=[]

var _PreLoadedB030: Array[Vector2i]=[]
var _PreLoadedW030: Array[Vector2i]=[]

#region PreLoad-Nested-Ary[1][Ary[2][Vec2i]]-SetterGetter----------------------------------#
func _SetPreLoadSwitchW(Index:int,Value : Array[Vector2i])-> void:
	match Index:
		0:
			_PreLoadedW000=Value
		1:
			_PreLoadedW001=Value
		2:
			_PreLoadedW002=Value
		3:
			_PreLoadedW003=Value
		4:
			_PreLoadedW004=Value
		5:
			_PreLoadedW005=Value
		6:
			_PreLoadedW006=Value
		7:
			_PreLoadedW007=Value
		8:
			_PreLoadedW008=Value
		9:
			_PreLoadedW009=Value
		10:
			_PreLoadedW010=Value
		11:
			_PreLoadedW011=Value
		12:
			_PreLoadedW012=Value
		13:
			_PreLoadedW013=Value
		14:
			_PreLoadedW014=Value
		15:
			_PreLoadedW015=Value
		16:
			_PreLoadedW016=Value
		17:
			_PreLoadedW017=Value
		18:
			_PreLoadedW018=Value
		19:
			_PreLoadedW019=Value
		20:
			_PreLoadedW020=Value
		21:
			_PreLoadedW021=Value
		22:
			_PreLoadedW022=Value
		23:
			_PreLoadedW023=Value
		24:
			_PreLoadedW024=Value
		25:
			_PreLoadedW025=Value
		26:
			_PreLoadedW026=Value
		27:
			_PreLoadedW027=Value
		28:
			_PreLoadedW028=Value
		29:
			_PreLoadedW029=Value
		30:
			_PreLoadedW030=Value
		_:
			_PreLoadedW000=Value


func _SetPreLoadSwitchB(Index:int,Value : Array[Vector2i])-> void:
	match Index:
		0:
			_PreLoadedB000=Value
		1:
			_PreLoadedB001=Value
		2:
			_PreLoadedB002=Value
		3:
			_PreLoadedB003=Value
		4:
			_PreLoadedB004=Value
		5:
			_PreLoadedB005=Value
		6:
			_PreLoadedB006=Value
		7:
			_PreLoadedB007=Value
		8:
			_PreLoadedB008=Value
		9:
			_PreLoadedB009=Value
		10:
			_PreLoadedB010=Value
		11:
			_PreLoadedB011=Value
		12:
			_PreLoadedB012=Value
		13:
			_PreLoadedB013=Value
		14:
			_PreLoadedB014=Value
		15:
			_PreLoadedB015=Value
		16:
			_PreLoadedB016=Value
		17:
			_PreLoadedB017=Value
		18:
			_PreLoadedB018=Value
		19:
			_PreLoadedB019=Value
		20:
			_PreLoadedB020=Value
		21:
			_PreLoadedB021=Value
		22:
			_PreLoadedB022=Value
		23:
			_PreLoadedB023=Value
		24:
			_PreLoadedB024=Value
		25:
			_PreLoadedB025=Value
		26:
			_PreLoadedB026=Value
		27:
			_PreLoadedB027=Value
		28:
			_PreLoadedB028=Value
		29:
			_PreLoadedB029=Value
		30:
			_PreLoadedB030=Value
		_:
			_PreLoadedB000=Value


func _GetPreLoadSwitchW(Index:int)->Array[Vector2i]:
	match Index:
		0:
			return _PreLoadedW000
		1:
			return _PreLoadedW001
		2:
			return _PreLoadedW002
		3:
			return _PreLoadedW003
		4:
			return _PreLoadedW004
		5:
			return _PreLoadedW005
		6:
			return _PreLoadedW006
		7:
			return _PreLoadedW007
		8:
			return _PreLoadedW008
		9:
			return _PreLoadedW009
		10:
			return _PreLoadedW010
		11:
			return _PreLoadedW011
		12:
			return _PreLoadedW012
		13:
			return _PreLoadedW013
		14:
			return _PreLoadedW014
		15:
			return _PreLoadedW015
		16:
			return _PreLoadedW016
		17:
			return _PreLoadedW017
		18:
			return _PreLoadedW018
		19:
			return _PreLoadedW019
		20:
			return _PreLoadedW020
		21:
			return _PreLoadedW021
		22:
			return _PreLoadedW022
		23:
			return _PreLoadedW023
		24:
			return _PreLoadedW024
		25:
			return _PreLoadedW025
		26:
			return _PreLoadedW026
		27:
			return _PreLoadedW027
		28:
			return _PreLoadedW028
		29:
			return _PreLoadedW029
		30:
			return _PreLoadedW030
		_:
			return _PreLoadedW000


func _GetPreLoadSwitchB(Index:int)->Array[Vector2i]:
	match Index:
		0:
			return _PreLoadedB000
		1:
			return _PreLoadedB001
		2:
			return _PreLoadedB002
		3:
			return _PreLoadedB003
		4:
			return _PreLoadedB004
		5:
			return _PreLoadedB005
		6:
			return _PreLoadedB006
		7:
			return _PreLoadedB007
		8:
			return _PreLoadedB008
		9:
			return _PreLoadedB009
		10:
			return _PreLoadedB010
		11:
			return _PreLoadedB011
		12:
			return _PreLoadedB012
		13:
			return _PreLoadedB013
		14:
			return _PreLoadedB014
		15:
			return _PreLoadedB015
		16:
			return _PreLoadedB016
		17:
			return _PreLoadedB017
		18:
			return _PreLoadedB018
		19:
			return _PreLoadedB019
		20:
			return _PreLoadedB020
		21:
			return _PreLoadedB021
		22:
			return _PreLoadedB022
		23:
			return _PreLoadedB023
		24:
			return _PreLoadedB024
		25:
			return _PreLoadedB025
		26:
			return _PreLoadedB026
		27:
			return _PreLoadedB027
		28:
			return _PreLoadedB028
		29:
			return _PreLoadedB029
		30:
			return _PreLoadedB030
		_:
			return _PreLoadedB000
#endregion PreLoad-Nested-Ary[1][Ary[2][Vec2i]]-SetterGetter----------------------------------#

#endregion PreLoad-Nested-Ary[1][Ary[2][Vec2i]]-----------------------------------------------#


#region PreLoad-SizeLimter4Testing---------------------------------------------------#
@export_range(0,51)
var BoarderSize : int = 0
@export
var MinWindow : Vector2i = Vector2i.ZERO
@export
var MaxWindow : Vector2i = Vector2i(144,108)#number of cells
@export
var HasWindow:bool

func _SetBoarder():
	if BoarderSize != 0:
		MaxWindow.x=144-BoarderSize
		MaxWindow.y=108-BoarderSize
		MinWindow.x=BoarderSize
		MinWindow.y=BoarderSize
#endregion PreLoad-SizeLimter4Testing---------------------------------------------------#

#region PreLoad-GetAryVec2FromFile---------------------------------------------------#
const _SavePath = "res://BadAppleData/BA"
@export
var StartImgFrame: int = 0
var _imgNumber:int = 1 + StartImgFrame
func _PathEnd(End:String)->String:
	if _imgNumber<10:
		return "00"+str(_imgNumber)+End
	elif _imgNumber<100:
		return "0"+str(_imgNumber)+End
	else:
		return str(_imgNumber)+End


var _WhiteVec2iAry : Array[Vector2i]
var _BlackVec2iAry : Array[Vector2i]
var _WhiteAry : Array = []
var _BlackAry : Array = []
func _GetAryVec2FromFile()->void:
	var file = FileAccess.open(_SavePath+_PathEnd(".txt"),FileAccess.READ)
	_WhiteAry = file.get_var() # at this time Can not be Array[Vector2i]
	_BlackAry = file.get_var()
	_WhiteVec2iAry.assign(_WhiteAry)
	_BlackVec2iAry.assign(_BlackAry)
	if HasWindow:
		_WhiteVec2iAry=[]
		_BlackVec2iAry=[]
		for i:Vector2i in _WhiteAry:
			if 	(	MinWindow.x<i.x and i.x <MaxWindow.x
				) and (
					MinWindow.y<i.y and i.y<MaxWindow.y):
				_WhiteVec2iAry.append(i)
		for i:Vector2i in _BlackAry:
			if (	MinWindow.x<i.x and i.x <MaxWindow.x
				) and (
					MinWindow.y<i.y and i.y<MaxWindow.y):
				_BlackVec2iAry.append(i)
#endregion PreLoad-GetAryVec2FromFile---------------------------------------------------#

var _PreLoadNumber : int = 0
func PreLoadNext():
	if _imgNumber<6563:
		_GetAryVec2FromFile()
		_SetPreLoadSwitchW(_PreLoadNumber,_WhiteVec2iAry)
		_SetPreLoadSwitchB(_PreLoadNumber,_BlackVec2iAry)
		#print("PreLoadNumberEnd ",PreLoadNumber)
		#print(Time.get_datetime_dict_from_system())
		_PreLoadNumber+=1
		if _PreLoadNumber>30:
			_PreLoadNumber=0
		_imgNumber+=1+ImgFrameAdvancement
@export
var ImgFrameAdvancement: int = 0
#endregion PreLoad----------------------------------------------------------------------#



#region NextFrame--------------------------------------------------------------------#
var _avrageframetimetotal:float
var LayerFrame : int = 0
var _oldTime : float
var _getTB:int
var _getTW:int
var _newTime : float
var _PlayerNumber : int = 0
func NextFrame():
	if LayerFrame<6563:
		_MoveSprites()
		print("_______________NextFrameStart_______________")
		print(LayerFrame)
		_oldTime=Time.get_unix_time_from_system()
		_getTB = _GetTerrainB()
		_getTW = _GetTerrainW()
		_SetCells() #this needs to run even with autotiles because speedwise it 
					#helps the autotiles to be surrounded by something.
		_SetTerrain()
		LayerFrame+=1 
		print("_______________NextFrameEnd_______________")
		_newTime=Time.get_unix_time_from_system()
		print(Time.get_datetime_dict_from_system())
		_avrageframetimetotal+=_newTime-_oldTime
		PreLoadNext()
		_PlayerNumber+=1
		if _PlayerNumber>30:
			_PlayerNumber=0
	else:
		frame_timer.stop()
		print(	_avrageframetimetotal,
				"avrageframetime",
				_avrageframetimetotal/6563)
		get_tree().quit()

@onready var sprite_2d_5: Sprite2D = $Sprite2D5
@onready var sprite_2d_6: Sprite2D = $Sprite2D6
var floattime : float = 0.0
func _MoveSprites()->void:
	floattime=float(LayerFrame)/6562.0
	sprite_2d_5.position.y = 128 + (floattime*336)
	sprite_2d_6.position.y = 464 - (floattime*336)

#region NextFrame-GetTerrain---------------------------------------------------------#
var _dicofTerrainB : Dictionary ={
	364:TILESET_TERRAIN_COLORS.RED,
	443:TILESET_TERRAIN_COLORS.BLACK,
	1738:TILESET_TERRAIN_COLORS.BLUE128,
	2344:TILESET_TERRAIN_COLORS.BLUE,
	2512:TILESET_TERRAIN_COLORS.BLACK,
	2832:TILESET_TERRAIN_COLORS.MAGENTA,
	2956:TILESET_TERRAIN_COLORS.BLACK,
	3319:TILESET_TERRAIN_COLORS.CYAN,
	3673:TILESET_TERRAIN_COLORS.GREEN128,
	4190:TILESET_TERRAIN_COLORS.RED128,
	4337:TILESET_TERRAIN_COLORS.BLACK,
	4645:TILESET_TERRAIN_COLORS.BLUE,
	5217:TILESET_TERRAIN_COLORS.BLUE128,
	5402:TILESET_TERRAIN_COLORS.BLACK,
	6398:TILESET_TERRAIN_COLORS.RED,
}
var _dicofTerrainW : Dictionary ={
	443:TILESET_TERRAIN_COLORS.RED,
	820:TILESET_TERRAIN_COLORS.YELLOW,
	1261:TILESET_TERRAIN_COLORS.MAGENTA,
	1684:TILESET_TERRAIN_COLORS.RED,
	2344:TILESET_TERRAIN_COLORS.YELLOW,
	2740:TILESET_TERRAIN_COLORS.WHITE,
	2832:TILESET_TERRAIN_COLORS.GREEN,
	2956:TILESET_TERRAIN_COLORS.YELLOW,
	3319:TILESET_TERRAIN_COLORS.WHITE,
	3636:TILESET_TERRAIN_COLORS.MAGENTA,
	3673:TILESET_TERRAIN_COLORS.PINK,
	3804:TILESET_TERRAIN_COLORS.WHITE,
	4190:TILESET_TERRAIN_COLORS.BLUE,
	4645:TILESET_TERRAIN_COLORS.CYAN,
	4793:TILESET_TERRAIN_COLORS.WHITE,
	5039:TILESET_TERRAIN_COLORS.YELLOW,
	5217:TILESET_TERRAIN_COLORS.WHITE,
	5402:TILESET_TERRAIN_COLORS.RED,
	6080:TILESET_TERRAIN_COLORS.GREEN,
	6280:TILESET_TERRAIN_COLORS.WHITE,
}
enum TILESET_TERRAIN_COLORS {
	BLACK=0,
	WHITE=1,
	RED=2,
	YELLOW=3,
	MAGENTA=4,
	BLUE128=5,
	BLUE=6,
	GREEN=7,
	CYAN=8,
	GREEN128=9,
	PINK=10,
	RED128=11,
}
var _currentBterrain : TILESET_TERRAIN_COLORS = TILESET_TERRAIN_COLORS.BLACK
var _currentWterrain : TILESET_TERRAIN_COLORS = TILESET_TERRAIN_COLORS.WHITE


func _GetTerrainB():
	if LayerFrame in _dicofTerrainB.keys():
		_currentBterrain=_dicofTerrainB[LayerFrame]
	return _currentBterrain


func _GetTerrainW():
	if LayerFrame in _dicofTerrainW.keys():
		_currentWterrain=_dicofTerrainW[LayerFrame]
	return _currentWterrain
#endregion NextFrame-GetTerrain---------------------------------------------------------#

#region NextFrame-SetCells-----------------------------------------------------------#
var SetCellsNoTMode : Dictionary = {
	TILESET_TERRAIN_COLORS.BLACK:[0,Vector2i(0,0)],
	TILESET_TERRAIN_COLORS.WHITE:[0,Vector2i(1,34)],
	TILESET_TERRAIN_COLORS.RED:[1,Vector2i(0,0)],
	TILESET_TERRAIN_COLORS.YELLOW:[3,Vector2i(1,34)],
	
	TILESET_TERRAIN_COLORS.MAGENTA:[4,Vector2i(1,34)],
	TILESET_TERRAIN_COLORS.BLUE128:[5,Vector2i(0,0)],
	TILESET_TERRAIN_COLORS.BLUE:[6,Vector2i(0,0)],
	TILESET_TERRAIN_COLORS.GREEN:[7,Vector2i(1,34)],
	
	TILESET_TERRAIN_COLORS.CYAN:[8,Vector2i(0,0)],
	TILESET_TERRAIN_COLORS.GREEN128:[10,Vector2i(0,0)],
	TILESET_TERRAIN_COLORS.PINK:[10,Vector2i(1,34)],
	TILESET_TERRAIN_COLORS.RED128:[12,Vector2i(0,0)],
}
var _SetcellAry : Array # Set Cells Meth
func _SetCells()->void:
	_SetcellAry = SetCellsNoTMode[_getTB]
	for i:Vector2i in _GetPreLoadSwitchB(_PlayerNumber):
		set_cell(0,i,_SetcellAry[0],_SetcellAry[1])
	_SetcellAry = SetCellsNoTMode[_getTW]
	for i:Vector2i in _GetPreLoadSwitchW(_PlayerNumber):
		set_cell(0,i,_SetcellAry[0],_SetcellAry[1])
#endregion NextFrame-SetCells-----------------------------------------------------------#

#region NextFrame-SetTerrain---------------------------------------------------------#

func _SetTerrain()->void:
	for i in range(0,_GetPreLoadSwitchB(_PlayerNumber).size(),256):
		if _SetCellTerrainWaitForDoneB(i,_getTB):
			continue
	for i in range(0,_GetPreLoadSwitchW(_PlayerNumber).size(),256):
		if _SetCellTerrainWaitForDoneW(i,_getTW):
			continue

func _SetCellTerrainWaitForDoneB(I:int,getT:int)->bool:
	set_cells_terrain_path(0,
		_GetPreLoadSwitchB(_PlayerNumber).slice(I,I+255),
		0,getT)
	return true #has to wait for it to be done or else it locks up 

func _SetCellTerrainWaitForDoneW(I:int,getT:int)->bool:
	set_cells_terrain_path(0,
		_GetPreLoadSwitchW(_PlayerNumber).slice(I,I+255),
		0,getT)
	return true #it also has to be _path not _connect or it locks up 
#endregion NextFrame-SetTerrain---------------------------------------------------------#

#endregion NextFrame--------------------------------------------------------------------#
