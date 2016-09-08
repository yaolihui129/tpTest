<?php

class ExesceneAction extends Action {
    public function index(){
    	
    	 $m=M('exescene');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}