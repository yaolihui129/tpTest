<?php

class IndexAction extends Action {
    public function index(){
    	
    	 $m=M('product');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  public function show(){
	     echo "welcome,".$_GET['name'];
    }



}