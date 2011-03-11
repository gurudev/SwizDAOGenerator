/*

Copyright (c) @year@ @company.name@, All Rights Reserved 

@author   @author.name@
@contact  @author.email@
@project  @project.name@

@internal 

*/
package @namespace@.control
{
	import @namespace@.model.AbstractDAO;
	import @namespace@.model.vo.*;
	import @namespace@.view.mediators.MainViewMediator;
	import com.adams.swizdao.util.Action;
	import com.adams.swizdao.model.vo.SignalVO;
	import com.adams.swizdao.model.vo.CurrentInstance;
	import com.adams.swizdao.response.SignalSequence;
	import com.adams.swizdao.views.mediators.IViewMediator;

	import @namespace@.signal.ControlSignal;
	public class SignalsCommand
	{
		
		[Inject]
		public var controlSignal:ControlSignal;
		
		[Inject]
		public var mainViewMediator:MainViewMediator;
		
		[Inject]
		public var currentInstance:CurrentInstance; 
		 
		// todo: add listener
		/**
		 * Whenever an ChangeStateSignal is dispatched.
		 * MediateSignal initates this changestateAction to perform control Actions
		 * The invoke functions to perform control functions
		 */
		[ControlSignal(type='changeStateSignal')]
		public function changestateAction(state:String):void {
			mainViewMediator.view.currentState = state;
		}
	}
}