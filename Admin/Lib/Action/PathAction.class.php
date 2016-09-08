<?php

class PathAction extends Action {
    public function index(){
    	
    	 $m=M('path');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}