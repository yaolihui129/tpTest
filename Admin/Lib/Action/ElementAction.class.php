<?php

class ElementAction extends CommonAction {
    public function index(){

    	 $m=M('element');
    	 $arr=$m->select();

	     $this->assign('data',$arr);
	     $this->display();
    }


    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('element');
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('element');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=D('element');
        $id=$_GET['id'];

    }

    public function library(){
        $this->display();
    }

    public function del(){
        $m=M('element');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }


}