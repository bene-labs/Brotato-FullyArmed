extends Node

const MOD_DIR = "bene_labs-FullyArmed/"
const TESTMOD_LOG = "bene_labs-FullyArmed"

var dir = ""

func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", TESTMOD_LOG)
	dir = ModLoaderMod.get_unpacked_dir() + MOD_DIR

	# Add translations
	ModLoaderMod.add_translation(dir + "translations/fully_armed_text.en.translation")
	ModLoaderMod.add_translation(dir + "translations/fully_armed_text.de.translation")

func _ready():
	var ContentLoader = get_node("/root/ModLoader/Darkly77-ContentLoader/ContentLoader")
	
	ContentLoader.load_data(dir + "content_data/characters.tres", TESTMOD_LOG)
	
	ModLoaderUtils.log_info("Ready", TESTMOD_LOG)
	
