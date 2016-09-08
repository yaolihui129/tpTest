<?php

class RulesAction extends Action {
    public function index(){
    	
    	 $m=M('rules');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}