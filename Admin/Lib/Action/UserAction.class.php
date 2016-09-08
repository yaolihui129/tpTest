<?php

class UserAction extends Action {
    public function index(){
    	
    	 $m=M('user');
    	 $arr=$m->select();
    
	     $this->assign('data',$arr);
	     $this->display();
    }
 
   public function del(){
   	$m=M('user');
   	$id=$_GET['id'];
   	$count =$m->delete($id);
   	if ($count>0) {
   		$this->success('数据删除成功');
   	}else{
   		$this->error('数据删除失败');
   	}
   }
  
  public function mod(){
  	$id=$_GET['id'];
  	$m=M('user');
    $arr=$m->find($id);
    $this->assign('data',$arr);
  	 $this->display();
  }

}