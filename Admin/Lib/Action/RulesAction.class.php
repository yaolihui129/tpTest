<?php

class RulesAction extends CommonAction {
    public function index(){

    	 $m=M('rules');
    	 $arr=$m->select();

	     $this->assign('data',$arr);
	     $this->display();
    }


    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('rules');
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('rules');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=D('rules');
        $id=$_GET['id'];

    }

    public function del(){
        $m=M('rules');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }


}