/*
 * Copyright 2010 @nsdevaraj
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License. You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package @namespace@.util
{
	import @namespace@.model.AbstractDAO;
	import com.adams.swizdao.controller.ServiceController;
	import com.adams.swizdao.model.vo.CurrentInstance;
	import com.adams.swizdao.model.vo.IValueObject;
	import com.adams.swizdao.model.vo.PushMessage;
	import com.adams.swizdao.model.vo.SignalVO;
	import com.adams.swizdao.response.SignalSequence;
	import com.adams.swizdao.util.Action;
	import com.adams.swizdao.util.Description;
	import com.adams.swizdao.util.GetVOUtil;
	
	import flash.utils.Dictionary;
	
	import mx.messaging.events.MessageEvent;
	import mx.messaging.messages.AsyncMessage;
	
	import org.swizframework.core.IBeanFactory;
	import org.swizframework.core.IBeanFactoryAware;
	import com.adams.swizdao.service.NativeConsumer;
	import com.adams.swizdao.service.NativeProducer;
	
	public class NativeMessenger implements IBeanFactoryAware
	{
		public var produce:NativeProducer;
		public var consume:NativeConsumer;
		public var dynamicDAO:AbstractDAO;
		
		[Inject]
		public var currentInstance:CurrentInstance;
		
		[Inject]
		public var signalSeq:SignalSequence;
		
		protected var _controlService:ServiceController;  
		public function get controlService():ServiceController {
			return _controlService;
		}
		
		[Inject]
		public function set controlService( ro:ServiceController ):void {
			_controlService = ro; 
			produce = _controlService.producer;
			consume = _controlService.consumer;
		}
		
		private var _beanFactory:IBeanFactory;
		public function set beanFactory( beanFactory:IBeanFactory ):void {
			_beanFactory = beanFactory;
		}
			
		public function NativeMessenger()
		{
		}
		
		[PostConstruct]
		public function subscribeMessage():void { 
			consume.consumeAttempt.add( consumeHandler );
		}
		
		private var sentMsgArr:Dictionary=new Dictionary();
		public function produceMessage( signal:SignalVO ):void {
			var message:AsyncMessage = new AsyncMessage();
			message.headers = [];
			message.headers[ "destination" ] = signal.destination; 
			message.headers[ "name" ] = signal.name;
			message.headers[ "recepient" ] = signal.receivers;
		 	message.headers[ "dynamicdao" ] = signal.daoName;
			message.body = signal.description;
			produce.produceAttempt.add( onAckReceived ); 
			produce.produceMessage( message ); 
		} 
		
		protected function onAckReceived( event:MessageEvent = null ):void {
			signalSeq.onSignalDone();
		}
		
		private var avoidSignal:Boolean;
		protected function consumeHandler( event:MessageEvent = null ):void {
			 
		}
	}
}