package nme;


import openfl.Assets;


class AssetData {

	
	public static var className = new #if haxe3 Map <String, #else Hash <#end Dynamic> ();
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();
	
	private static var initialized:Bool = false;
	
	
	public static function initialize ():Void {
		
		if (!initialized) {
			
			className.set ("Beep", nme.NME_assets_data_beep_mp3);
			type.set ("Beep", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("assets/data/beep.mp3", nme.NME_assets_data_beep_mp4);
			type.set ("assets/data/beep.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			className.set ("assets/data/courier.ttf", nme.NME_assets_data_courier_ttf);
			type.set ("assets/data/courier.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/data/cursor.png", nme.NME_assets_data_cursor_png);
			type.set ("assets/data/cursor.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/default.png", nme.NME_assets_data_default_png);
			type.set ("assets/data/default.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/enemy1.png", nme.NME_assets_data_enemy1_png);
			type.set ("assets/data/enemy1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/Enemy2.png", nme.NME_assets_data_enemy2_png);
			type.set ("assets/data/Enemy2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/Enemy2.psd", nme.NME_assets_data_enemy2_psd);
			type.set ("assets/data/Enemy2.psd", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/data/handle.png", nme.NME_assets_data_handle_png);
			type.set ("assets/data/handle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/laserGreen.png", nme.NME_assets_data_lasergreen_png);
			type.set ("assets/data/laserGreen.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/laserGreenShot.png", nme.NME_assets_data_lasergreenshot_png);
			type.set ("assets/data/laserGreenShot.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/map.dam", nme.NME_assets_data_map_dam);
			type.set ("assets/data/map.dam", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("assets/data/map.dam.bak", nme.NME_assets_data_map_dam_bak);
			type.set ("assets/data/map.dam.bak", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("assets/data/mapCSV_Group1_Map.csv", nme.NME_assets_data_mapcsv_group1_map_csv);
			type.set ("assets/data/mapCSV_Group1_Map.csv", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("assets/data/nokiafc22.ttf", nme.NME_assets_data_nokiafc22_ttf);
			type.set ("assets/data/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/data/sprites.png", nme.NME_assets_data_sprites_png);
			type.set ("assets/data/sprites.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/tower.png", nme.NME_assets_data_tower_png);
			type.set ("assets/data/tower.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/autotiles.png", nme.NME_assets_data_unused_autotiles_png);
			type.set ("assets/data/unused/autotiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/autotiles_alt.png", nme.NME_assets_data_unused_autotiles_alt_png);
			type.set ("assets/data/unused/autotiles_alt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/base.png", nme.NME_assets_data_unused_base_png);
			type.set ("assets/data/unused/base.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/button.png", nme.NME_assets_data_unused_button_png);
			type.set ("assets/data/unused/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/button_a.png", nme.NME_assets_data_unused_button_a_png);
			type.set ("assets/data/unused/button_a.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/button_b.png", nme.NME_assets_data_unused_button_b_png);
			type.set ("assets/data/unused/button_b.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/button_c.png", nme.NME_assets_data_unused_button_c_png);
			type.set ("assets/data/unused/button_c.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/button_down.png", nme.NME_assets_data_unused_button_down_png);
			type.set ("assets/data/unused/button_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/button_left.png", nme.NME_assets_data_unused_button_left_png);
			type.set ("assets/data/unused/button_left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/button_right.png", nme.NME_assets_data_unused_button_right_png);
			type.set ("assets/data/unused/button_right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/button_up.png", nme.NME_assets_data_unused_button_up_png);
			type.set ("assets/data/unused/button_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/button_x.png", nme.NME_assets_data_unused_button_x_png);
			type.set ("assets/data/unused/button_x.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/button_y.png", nme.NME_assets_data_unused_button_y_png);
			type.set ("assets/data/unused/button_y.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/fontData10pt.png", nme.NME_assets_data_unused_fontdata10pt_png);
			type.set ("assets/data/unused/fontData10pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/fontData11pt.png", nme.NME_assets_data_unused_fontdata11pt_png);
			type.set ("assets/data/unused/fontData11pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/logo.png", nme.NME_assets_data_unused_logo_png);
			type.set ("assets/data/unused/logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/logo_corners.png", nme.NME_assets_data_unused_logo_corners_png);
			type.set ("assets/data/unused/logo_corners.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/logo_light.png", nme.NME_assets_data_unused_logo_light_png);
			type.set ("assets/data/unused/logo_light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/unused/stick.png", nme.NME_assets_data_unused_stick_png);
			type.set ("assets/data/unused/stick.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/flixel.png", nme.NME_assets_data_vcr_flixel_png);
			type.set ("assets/data/vcr/flixel.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/open.png", nme.NME_assets_data_vcr_open_png);
			type.set ("assets/data/vcr/open.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/pause.png", nme.NME_assets_data_vcr_pause_png);
			type.set ("assets/data/vcr/pause.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/play.png", nme.NME_assets_data_vcr_play_png);
			type.set ("assets/data/vcr/play.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/record_off.png", nme.NME_assets_data_vcr_record_off_png);
			type.set ("assets/data/vcr/record_off.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/record_on.png", nme.NME_assets_data_vcr_record_on_png);
			type.set ("assets/data/vcr/record_on.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/restart.png", nme.NME_assets_data_vcr_restart_png);
			type.set ("assets/data/vcr/restart.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/step.png", nme.NME_assets_data_vcr_step_png);
			type.set ("assets/data/vcr/step.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/stop.png", nme.NME_assets_data_vcr_stop_png);
			type.set ("assets/data/vcr/stop.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vis/bounds.png", nme.NME_assets_data_vis_bounds_png);
			type.set ("assets/data/vis/bounds.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/World.png", nme.NME_assets_data_world_png);
			type.set ("assets/data/World.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/World.png.bak", nme.NME_assets_data_world_png_bak);
			type.set ("assets/data/World.png.bak", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/HaxeFlixel.svg", nme.NME_assets_haxeflixel_svg);
			type.set ("assets/HaxeFlixel.svg", Reflect.field (AssetType, "text".toUpperCase ()));
			
			
			initialized = true;
			
		}
		
	}
	
	
}


class NME_assets_data_beep_mp3 extends flash.media.Sound { }
class NME_assets_data_beep_mp4 extends flash.media.Sound { }
class NME_assets_data_courier_ttf extends flash.text.Font { }
class NME_assets_data_cursor_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_default_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_enemy1_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_enemy2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_enemy2_psd extends flash.utils.ByteArray { }
class NME_assets_data_handle_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_lasergreen_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_lasergreenshot_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_map_dam extends flash.utils.ByteArray { }
class NME_assets_data_map_dam_bak extends flash.utils.ByteArray { }
class NME_assets_data_mapcsv_group1_map_csv extends flash.utils.ByteArray { }
class NME_assets_data_nokiafc22_ttf extends flash.text.Font { }
class NME_assets_data_sprites_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_tower_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_autotiles_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_autotiles_alt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_base_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_button_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_button_a_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_button_b_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_button_c_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_button_down_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_button_left_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_button_right_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_button_up_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_button_x_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_button_y_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_fontdata10pt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_fontdata11pt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_logo_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_logo_corners_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_logo_light_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_unused_stick_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_flixel_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_open_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_pause_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_play_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_record_off_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_record_on_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_restart_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_step_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_stop_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vis_bounds_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_world_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_world_png_bak extends flash.utils.ByteArray { }
class NME_assets_haxeflixel_svg extends flash.utils.ByteArray { }
