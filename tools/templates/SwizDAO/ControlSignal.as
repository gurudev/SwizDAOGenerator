/*

Copyright (c) @year@ @company.name@, All Rights Reserved 

@author   @author.name@
@contact  @author.email@
@project  @project.name@

@internal 

*/
package @namespace@.signal
{
	import com.adams.swizdao.views.mediators.IViewMediator;
	import com.adams.swizdao.model.vo.SignalVO;
	
	import mx.collections.ArrayCollection;
	import org.osflash.signals.Signal;
	import @namespace@.model.vo.*;
	public class ControlSignal
	{
		// add Signal 
		public var changeStateSignal:Signal= new Signal(String);
	}
}