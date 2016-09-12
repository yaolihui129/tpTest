<?php

class DictAction extends CommonAction {
    public function index(){

    	 $m=M('dict');
    	 $where=array("type"=>"testgp","state"=>"正常");
    	 $arr=$m->field('k,v',false)->where($where)->select();
         dump($arr);
	     $this->assign('data',$arr);
	     $this->display();
    }

    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('dict');
        $id=$_GET['id'];

    }

    public function mod(){
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $m=M('dict');

        $this->display();
    }

    public function update(){
        $m=D('dict');


    }

    public function del(){
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $m=M('dict');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}