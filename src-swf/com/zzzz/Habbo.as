package com.zzzz 
{
	public class Habbo 
    {
        private static var _tab:Class = null;
        private static var _windowManager:Object = null;
        private static var _communicationManager:Object = null;
        private static var _sessionDataManager:Object = null;

        private static function get tab():Object
        {
            if (_tab == null)
            {
                _tab = Reflection.findClass("com.sulake.habbo.friendbar.view.tabs.Tab", "_-2aF._-31Z");
            }
			
            return _tab;
        }

        public static function get available():Boolean
        {
            try
            {
                return (((!(Habbo.windowManager == null)) && (!(Habbo.communicationManager == null))) && (!(Habbo.sessionDataManager == null)));
            }
            catch(err:Error)
            {
            }
			
            return false;
        }

        public static function get windowManager():Object
        {
            if (_windowManager == null)
            {
                _windowManager = Reflection.findProperty(Habbo.tab, "_Str_3684", "_-1JI");
            }
			
            return _windowManager;
        }

        public static function get communicationManager():Object
        {
            if (_communicationManager == null)
            {
                _communicationManager = Reflection.findProperty(Habbo.windowManager, "communication");
            }
			
            return _communicationManager;
        }

        public static function get sessionDataManager():Object
        {
            if (_sessionDataManager == null)
            {
                _sessionDataManager = Reflection.findProperty(Habbo.windowManager, "sessionDataManager");
            }
			
            return _sessionDataManager;
        }
    }
}