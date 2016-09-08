<?php

class FuncAction extends Action {
    public function index(){
    	
    	 $m=M('func');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}