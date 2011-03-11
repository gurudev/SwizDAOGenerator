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
		public var currentInstance:CurrentInstance; 
		 
		public function SignalsCommand()
		{
		}
		// todo: add listener
	}
}