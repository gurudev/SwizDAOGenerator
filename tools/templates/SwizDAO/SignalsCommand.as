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
	import com.adams.swizdao.model.vo.CurrentInstance;
	
	public class SignalsCommand
	{
		
		[Inject]
		public var currentInstance:CurrentInstance; 
		 
		public function SignalsCommand()
		{
		}
		// todo: add listener
	}
}