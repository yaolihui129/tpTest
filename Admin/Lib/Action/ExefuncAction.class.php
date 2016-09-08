<?php

class ExefuncAction extends Action {
    public function index(){

    	 $m=M('exefunc');
    	 $arr=$m->select();

	     $this->assign('data',$arr);
	     $this->display();
    }



    public function add(){
        $this->display();
    }

    public function insert(){
        $m=M('exefunc');
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('exefunc');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=M('exefunc');
        $id=$_GET['id'];

    }

    public function del(){
        $m=M('exefunc');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}