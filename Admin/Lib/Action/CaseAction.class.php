<?php

class CaseAction extends CommonAction {
    public function index(){

    	 $m=M('case');
    	 $arr=$m->select();

	     $this->assign('data',$arr);
	     $this->display();
    }

    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('case');
        $id=$_GET['id'];

    }

    public function mod(){
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $m=M('case');

        $this->display();
    }

    public function update(){
        $m=D('case');


    }

    public function del(){
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $m=M('case');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}