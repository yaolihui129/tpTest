<?php

class StageAction extends Action {
    public function index(){

    	 $m=M('stage');
    	 $arr=$m->select();

	     $this->assign('data',$arr);
	     $this->display();
    }

    public function add(){
        $this->display();
    }

    public function insert(){
        $m=M('stage');
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('stage');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=M('stage');
        $id=$_GET['id'];

    }

    public function del(){
        $m=M('stage');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }


}