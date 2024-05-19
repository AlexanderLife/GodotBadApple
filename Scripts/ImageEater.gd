extends Node


##MakeNewAutoTile--------------------------------------------------------------#
## MakeNewAutoTile is used to make whatever 2 colors you want of the standard 
## "Alexander Format 512 2 Type AutoTile TileSheet" ;)
## it works by turning the Yellow color in to what ever color you want
## it works by turning the Green color in to what ever color you want
## because the tiles are all arranged in the Alexander Standard Way you don't
## have to redraw the autotiles you can just use a text editor edit the human 
## readable TileSet saved resource copy paste the tiles from with the trrain and 
## you never have to click to fill out a 3x3 auto tile again! you should always 
## try modified human readable files programmatic or find replace, it saves so much 
## time, this is why open source human readable is always a great choice.
## 
## anyway, if you copy the old tiles to a new text file I am talking about stuff 
## in the tilesets that looks like "11:26/0/terrain = 6" well that is the center 
## of the tile with atlas cords x11 y26 this is 12 tiles right zero index 27 
## tiles down, so if grass was 6 and you wanted to change all the grass tiles to
## water 4 you would replace "terrain = 6" with "terrain = 4" and "_side = 6" 
## with "_side = 4" and "_corner = 6" with "_corner = 4" then copy the whole 
## thing from the new text file in to the correct source of the tileset resource.
## I included the svg inkscape file for making the 512 auto tiles that way you 
## can export the frame layer selection and make the tiles in any size tiles 
## by changing the resolution not just 6x6 pixels, it has layers for connection 
## points and a more organic looking line as a jumping off point.
const AUTO_TILE_FULL_512 = preload("res://AutoTilesImages/autoTileFull512.png")
func MakeNewAutoTile(	YC:Color,GC:Color,
						YColorName:StringName,GColorName:StringName):
	var Oldimg : Image = AUTO_TILE_FULL_512.get_image()
	var Newimg : Image = Image.create(	Oldimg.get_width(),
										Oldimg.get_height(),
										Oldimg.get_mipmap_count()>0,
										Oldimg.get_format(),
										)
	var C:Color
	for X:int in Oldimg.get_size().x:
		for Y:int in Oldimg.get_size().y:
			C = Oldimg.get_pixel(X,Y)
			if IsSameColorUint8(C,Color8(255,255,0,255)):
				Newimg.set_pixel(X,Y,YC)
			elif IsSameColorUint8(C,Color8(0,255,0,255)):
				Newimg.set_pixel(X,Y,GC)
			elif IsSameColorUint8(C,Color8(255,0,0,255)):
				Newimg.set_pixel(X,Y,Color8(255,0,0,255))
			elif IsCloser2Green(C):
				#if it's not red,green,or yellow it's forced green or yellow
				Newimg.set_pixel(X,Y,GC)
			else:
				Newimg.set_pixel(X,Y,YC)  
	Newimg.save_png("res://AutoTilesImages/autoTileFull512"+
						YColorName+
						GColorName+
						".png")

func IsSameColorUint8(A:Color,B:Color)->bool:
	return A.r8==B.r8 and A.g8==B.g8 and A.b8==B.b8 and A.a8==B.a8

func IsCloser2Green(A:Color)->bool:
	return ColorDistance	(
				A,Color8(0,255,0,255),true,false
							)<=ColorDistance(
				A,Color8(255,255,0,255),true,false)

func ColorDistance(A:Color,B:Color,
						ColorEqual:bool=true,IncludeAlpha:bool=true,
					)->int:
	#if color was a number the distance from a color to b color
	var amount:int=0
	match [ColorEqual,IncludeAlpha]:
		[true,true]:
			return 		absi(	A.r8-B.r8
					)+	absi(	A.g8-B.g8
					)+	absi(	A.b8-B.b8
					)+	absi(	A.a8-B.a8)
		[false,true]:
			return 		absi((	A.r8-B.r8)*16777216)+(
						absi(	A.g8-B.g8)*65536)+(
						absi(	A.b8-B.b8)*256
					)+	absi(	A.a8-B.a8)
		[true,false]:
			return 		absi(	A.r8-B.r8
					)+	absi(	A.g8-B.g8
					)+	absi(	A.b8-B.b8)
		[false,false]:
			return 	(	absi(	A.r8-B.r8)*65536
					)+(	absi(	A.g8-B.g8)*256
					)+	absi(	A.b8-B.b8)
		_:
			return -1

@onready
var aryforautotiles : Array[Array]=[
	[Color8(255,0,0,255),Color8(255,255,255,255),"Red","White",],
	[Color8(0,0,0,255),Color8(255,0,0,255),"Black","Red",],
	[Color8(0,0,0,255),Color8(255,255,0,255),"Black","Yellow",],
	[Color8(0,0,0,255),Color8(255,0,255,255),"Black","Magenta",],
	[Color8(0,0,128,255),Color8(255,0,0,255),"Blue128","Red",],
	[Color8(0,0,255,255),Color8(255,255,0,255),"Blue","Yellow",],
	[Color.MAGENTA,Color8(0,255,0,255),"Magenta","Green",],
	[Color.CYAN,Color8(255,255,255,255),"Cyan","White",],
	[Color.MAGENTA,Color8(0,255,0,255),"","",],
	[Color.CYAN,Color.MAGENTA,"Cyan","Magenta",],
	[Color8(0,128,0,255),Color8(255,128,255,255),"Green128","Pink",],
	[Color8(0,128,0,255),Color8(255,255,255,255),"Green128","White",],
	[Color8(128,0,0,255),Color8(0,0,255,255),"Red128","",],
	[Color8(0,0,0,255),Color8(0,0,255,255),"Black","Blue",],
	[Color8(0,0,255,255),Color.CYAN,"Blue","Cyan",],
	[Color8(0,0,255,255),Color8(255,255,255,255),"Blue","White",],
	[Color8(0,0,128,255),Color8(255,255,255,255),"Blue128","White",],
	[Color8(0,0,0,255),Color8(0,255,0,255),"Black","Green",],
]##this was used for bulk color tilesheet making

#func _ready() -> void:## with this
	#for i:Array in aryforautotiles:
		#MakeNewAutoTile(i[0],i[1],i[2],i[3],)
##MakeNewAutoTile--------------------------------------------------------------#


##DoImage----------------------------------------------------------------------#
## I wanted Bad apple to load quickly so proccessing the image first making a 
## file for each image filled with correct vec2i 
var imgNumber:int = 1
func PathEnd(End:String)->String:
	if imgNumber<10:
		return "00"+str(imgNumber)+End
	elif imgNumber<100:
		return "0"+str(imgNumber)+End
	else:
		return str(imgNumber)+End

var WhiteVec2iAry : Array[Vector2i] = []
var BlackVec2iAry : Array[Vector2i] = []
var PathStart : StringName = "/home/ 
								where you put the images from the torrent 
						/bad_apple_is.7z/bad_apple_is/image_sequence/bad_apple_"
	#so about the torrent I did'nt make it and i did not download the SQL or
	#Xml files in the torrent I just downloaded the images and wav but I did'nt 
	#really have any problems with it on my linux machine not sure how it might 
	#work with a more popular os, that I don't have to test it on.
var SavePath : StringName = "res://BadAppleData/"#the vec2i files will go in this
func DoImage()->bool:
	WhiteVec2iAry = []
	BlackVec2iAry = []
	var img : Image = Image.load_from_file(PathStart+PathEnd(".png"))
	img.resize(144,108,Image.INTERPOLATE_LANCZOS)#these will be 6x6 pixel tiles so 144x108 is really 864x648
	var C : Color
	for X:int in img.get_size().x:
		for Y:int in img.get_size().y:
			C = img.get_pixel(X,Y)
			match [(C.r8-128)<0,(C.g8-128)<0,(C.b8-128)<0]:#test if black or white
				[true,true,true],[false,true,true],[true,false,true],[true,true,false]:#2 out of 3
					BlackVec2iAry.append(Vector2i(X,Y))
				_:
					WhiteVec2iAry.append(Vector2i(X,Y))
	var file = FileAccess.open(SavePath+"BA"+PathEnd(".txt"),FileAccess.WRITE)
	file.store_var(WhiteVec2iAry,true)
	file.store_var(BlackVec2iAry,true)
	return true


func DoAllImgs():
	for i in 6562:
		if DoImage():
			continue
		imgNumber+=1
