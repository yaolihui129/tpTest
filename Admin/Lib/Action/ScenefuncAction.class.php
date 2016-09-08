<?php

class ScenefuncAction extends Action {
    public function index(){
    	
    	 $m=M('scenefunc');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}