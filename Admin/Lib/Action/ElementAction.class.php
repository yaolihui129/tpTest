<?php

class ElementAction extends Action {
    public function index(){
    	
    	 $m=M('element');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}