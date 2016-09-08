<?php

class ProsysAction extends Action {
    public function index(){
    	
    	 $m=M('prosys');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}