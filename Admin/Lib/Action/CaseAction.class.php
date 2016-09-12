<?php

class CaseAction extends CommonAction {
    public function index(){
         $prodid=$_GET['prodid'];
         $proid=$_GET['proid'];
         $sysid=$_GET['sysid'];
         $pathid=$_GET['pathid'];
         $funcid=$_GET['funcid'];

         $f=M('func');
         $funces=$f->find($funcid);
         $this->assign('funces',$funces);

    	 $m=M('case');
    	 $where=array("funcid"=>$funcid);
    	 $cases=$m->where($where)->select();
	     $this->assign('cases',$cases);
	     $this->display();
    }

    public function add(){
        $this->display();
    }

    public function insert(){

        $m=D('case');

    }

    public function mod(){
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $m=M('case');

        $this->display();
    }

    public function update(){
        $m=D('case');


    }

    public function library(){
        $this->display();
    }

    public function del(){
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $m=M('case');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

}