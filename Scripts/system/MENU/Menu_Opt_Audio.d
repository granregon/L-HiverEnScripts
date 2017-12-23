
instance MENU_OPT_AUDIO(C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENUITEM_AUDIO_HEADLINE";
	items[1] = "MENUITEM_AUDIO_SFXVOL";
	items[2] = "MENUITEM_AUDIO_SFXVOL_SLIDER";
	items[3] = "MENUITEM_AUDIO_MUSICVOL";
	items[4] = "MENUITEM_AUDIO_MUSICVOL_SLIDER";
	items[5] = "MENUITEM_AUDIO_MUSIC";
	items[6] = "MENUITEM_AUDIO_MUSIC_CHOICE";
	items[7] = "MENUITEM_AUDIO_PROVIDER";
	items[8] = "MENUITEM_AUDIO_PROVIDER_CHOICE";
	items[9] = "MENUITEM_AUDIO_SPEEKER";
	items[10] = "MENUITEM_AUDIO_SPEEKER_CHOICE";
	items[11] = "MENUITEM_AUDIO_REVERB";
	items[12] = "MENUITEM_AUDIO_REVERB_CHOICE";
	items[13] = "MENUITEM_AUDIO_REVERB_SPEECH";
	items[14] = "MENUITEM_AUDIO_REVERB_SPEECH_CHOICE";
	items[15] = "MENUITEM_AUDIO_SAMPLERATE";
	items[16] = "MENUITEM_AUDIO_SAMPLERATE_CHOICE";
	items[17] = "MENUITEM_AUDIO_BACK";
	dimx = 5192;
	dimy = 6192;
	flags = flags | MENU_SHOW_INFO;
};


const int MENU_SOUND_DY = 550;

instance MENUITEM_AUDIO_HEADLINE(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "AUDIO SETTINGS";
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = MENU_TITLE_Y;
	dimx = 8100;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_AUDIO_SFXVOL(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "SFX volume";
	text[1] = "Set sound effects and speech volume";
	posx = 1000;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 0);
	dimx = 3400;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_SFXVOL_SLIDER(C_MENU_ITEM_DEF)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	posx = 4300;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 0);
	dimx = MENU_SLIDER_DX;
	dimy = MENU_SLIDER_DY;
	onchgsetoption = "soundVolume";
	onchgsetoptionsection = "SOUND";
	userfloat[0] = 20;
	userstring[0] = MENU_SLIDER_POS_PIC;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_AUDIO_MUSICVOL(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Music volume";
	text[1] = "Set background music volume";
	posx = 1000;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 1);
	dimx = 3400;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_MUSICVOL_SLIDER(C_MENU_ITEM_DEF)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	posx = 4300;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 1);
	dimx = MENU_SLIDER_DX;
	dimy = MENU_SLIDER_DY;
	onchgsetoption = "musicVolume";
	onchgsetoptionsection = "SOUND";
	userfloat[0] = 15;
	userstring[0] = MENU_SLIDER_POS_PIC;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_AUDIO_MUSIC(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Music";
	text[1] = "Toggle background music on/off";
	posx = 1000;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 2);
	dimx = 3000;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_MUSIC_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "off|on";
	fontname = MENU_FONT_SMALL;
	posx = 4300;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 2) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "musicEnabled";
	onchgsetoptionsection = "SOUND";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};

instance MENUITEM_AUDIO_PROVIDER(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Sound device";
	text[1] = "You need to restart to make changes take effect";
	posx = 1000;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 3);
	dimx = 3000;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_PROVIDER_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "1|2|3|4|5";
	fontname = MENU_FONT_SMALL;
	posx = 4300;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 3) + MENU_CHOICE_YPLUS;
	dimx = 3000;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "soundProviderIndex";
	onchgsetoptionsection = "INTERNAL";
	oneventaction[6] = update_audiooptions;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};

instance MENUITEM_AUDIO_SPEEKER(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Speakers";
	text[1] = "Select speakers configuration";
	posx = 1000;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 4);
	dimx = 3000;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_SPEEKER_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "2 speakers|headphones|surround|4 speakers|5.1 speakers|7.1 speakers";
	fontname = MENU_FONT_SMALL;
	posx = 4300;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 4) + MENU_CHOICE_YPLUS;
	dimx = 3000;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "soundSpeakerIndex";
	onchgsetoptionsection = "INTERNAL";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_PERF_OPTION;
};

instance MENUITEM_AUDIO_REVERB(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Env. reverb";
	text[1] = "Toggle echo on/off in places like caves etc.";
	posx = 1000;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 5);
	dimx = 3000;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_REVERB_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "off|on";
	fontname = MENU_FONT_SMALL;
	posx = 4300;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 5) + MENU_CHOICE_YPLUS;
	dimx = MENU_CHOICE_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "soundUseReverb";
	onchgsetoptionsection = "SOUND";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};

instance MENUITEM_AUDIO_REVERB_SPEECH(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Speech reverb";
	text[1] = "Reverb effects on speech";
	posx = 1000;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 6);
	dimx = 3000;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_REVERB_SPEECH_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "none|medium|full";
	fontname = MENU_FONT_SMALL;
	posx = 4300;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 6) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "useSpeechReverbLevel";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_PERF_OPTION;
};

instance MENUITEM_AUDIO_SAMPLERATE(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Sample rate";
	text[1] = "You need to restart to make changes take effect";
	posx = 1000;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 7);
	dimx = 3000;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_SAMPLERATE_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "22 kHz|44 kHz";
	fontname = MENU_FONT_SMALL;
	posx = 4300;
	posy = MENU_START_SOUND_Y + (MENU_SOUND_DY * 7) + MENU_CHOICE_YPLUS;
	dimx = MENU_CHOICE_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "soundSampleRateIndex";
	onchgsetoptionsection = "INTERNAL";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};

instance MENUITEM_AUDIO_BACK(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "BACK";
	posx = 1000;
	posy = MENU_BACK_Y;
	dimx = 6192;
	dimy = MENU_SOUND_DY;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};


func int update_audiooptions()
{
	Update_ChoiceBox("MENUITEM_AUDIO_PROVIDER_CHOICE");
	return 1;
};

func int apply_audioresolution()
{
	Apply_Options_Audio();
	return 0;
};

