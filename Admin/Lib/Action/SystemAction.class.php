<?php

class SystemAction extends Action {
    public function index(){
    	
    	 $m=M('system');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}