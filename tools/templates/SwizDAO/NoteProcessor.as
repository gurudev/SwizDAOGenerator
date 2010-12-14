/*

Copyright (c) @year@ @company.name@, All Rights Reserved 

@author   @author.name@
@contact  @author.email@
@project  @project.name@

@internal 

*/
package @namespace@.model.processor
{
	import @namespace@.model.AbstractDAO;
	import @namespace@.model.vo.@gesture@;
	
	import com.adams.swizdao.model.vo.IValueObject;
	import com.adams.swizdao.model.processor.AbstractProcessor;

	public class @gesture@Processor extends AbstractProcessor
	{  
		[Inject("@lowerCaseGesture@DAO")]
		public var @lowerCaseGesture@DAO:AbstractDAO;

		public function @gesture@Processor()
		{
			super();
		}
		//@TODO
		override public function processVO(vo:IValueObject):void
		{
			if(!vo.processed){
				super.processVO(vo);
				var @lowerCaseGesture@vo:@gesture@ = vo as @gesture@;
			}
		}
	}
}