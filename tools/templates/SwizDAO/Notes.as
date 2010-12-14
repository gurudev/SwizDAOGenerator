/*

Copyright (c) @year@ @company.name@, All Rights Reserved 

@author   @author.name@
@contact  @author.email@
@project  @project.name@

@internal 

*/
package @namespace@.model.vo
{
	import mx.collections.ArrayCollection;
	import com.adams.swizdao.model.vo.AbstractVO;

	[Bindable]
	[RemoteClass(alias='@namespace@.dao.entities.@gesture@')]
	public class @gesture@ extends AbstractVO
	{
		private var _@gesture@Id:int; 
		public function @gesture@()
		{
			super();
		}
		public function get @gesture@Id():int
		{
			return _@gesture@Id;
		}

		public function set @gesture@Id(value:int):void
		{
			_@gesture@Id = value;
		}

	}
}