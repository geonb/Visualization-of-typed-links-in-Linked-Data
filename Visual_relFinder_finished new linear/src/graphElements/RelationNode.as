﻿/**
 * Copyright (C) 2009 Philipp Heim, Sebastian Hellmann, Jens Lehmann, Steffen Lohmann and Timo Stegemann
 * 
 * This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License along with this program; if not, see <http://www.gnu.org/licenses/>.
 */ 

package graphElements 
{
	import flash.events.Event;
	import mx.core.Application;
	
	public class RelationNode extends MyNode
	{
		//[Bindable]
		//public var rLabel:String = "";
		private var _relation:Relation = null;
		
		public function RelationNode(id:String, relation:Relation) {
			super(id, relation.predicate);	//the predicate represents the RelationNode!
			this._relation = relation;
		}
		
		public function get relation():Relation {
			return _relation;
		}
		public function isHidden():void {
			this.element.isVisible = false;
		}
		public function isShown(): void {
			this.element.isVisible = true;
		}
	}
	
}