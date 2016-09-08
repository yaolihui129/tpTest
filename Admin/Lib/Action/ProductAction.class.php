<?php

class ProductAction extends Action {
    public function index(){
    	
    	 $m=M('product');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
  
}