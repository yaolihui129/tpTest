<?php

class SystemAction extends CommonAction {
    public function index(){
        $prodid=$_GET['prodid'];
        $p=M('product');
        $arr=$p->select();
        $this->assign('data',$arr);

        $a=array(prodid=>$prodid);
        //var_dump($a);
    	 $m=M('system');
    	 $syses=$m->where($a)->select();

	     $this->assign('syses',$syses);
	     $this->display();
    }



    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('system');
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('system');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=D('system');
        $id=$_GET['id'];

    }

    public function test(){
        $this->display();
    }

    public function del(){
        $m=M('system');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}