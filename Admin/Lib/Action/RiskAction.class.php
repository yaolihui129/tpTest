<?php

class RiskAction extends Action {
    public function index(){
    	
    	 $m=M('risk');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}