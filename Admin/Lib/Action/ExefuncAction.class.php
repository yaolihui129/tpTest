<?php

class ExefuncAction extends Action {
    public function index(){
    	
    	 $m=M('exefunc');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}