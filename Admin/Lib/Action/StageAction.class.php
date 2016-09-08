<?php

class StageAction extends Action {
    public function index(){
    	
    	 $m=M('stage');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}