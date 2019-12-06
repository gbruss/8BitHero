gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 300;

menu_x = gui_width;
menu_y = gui_height - gui_margin;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[1] = "Return to Main Menu";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 1;

audio_stop_sound(snd_ambience);
audio_stop_sound(snd_drum1);
audio_stop_sound(snd_drum2);
audio_stop_sound(snd_drum3);
audio_stop_sound(snd_drum4);