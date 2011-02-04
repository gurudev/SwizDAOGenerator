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
	
	import @namespace@.signal.ControlSignal;
	public class @gesture@Command
	{
		
		[Inject]
		public var controlSignal:ControlSignal;
		[Inject]
		public var currentInstance:CurrentInstance; 
		 
		public function @gesture@Command()
		{
		}
		// todo: add listener
	}
}