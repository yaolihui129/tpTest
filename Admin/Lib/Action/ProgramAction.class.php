<?php

class ProgramAction extends Action {
    public function index(){
    	
    	 $m=M('program');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}