<?php

class SceneAction extends Action {
    public function index(){
    	
    	 $m=M('scene');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}