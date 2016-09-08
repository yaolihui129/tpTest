<?php

class CaseAction extends Action {
    public function index(){
    	
    	 $m=M('case');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}