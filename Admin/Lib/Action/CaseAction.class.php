<?php

class CaseAction extends CommonAction {
    public function index(){
        /* 接收参数*/
         $prodid=$_GET['prodid'];
         $proid=$_GET['proid'];
         $sysid=$_GET['sysid'];
         $pathid=$_GET['pathid'];
         $funcid=$_GET['funcid'];
         /* 实例化模型*/
         $f=M('func');
         $funces=$f->find($funcid);
         /* 输出数据*/
         $this->assign('funces',$funces);
         /* 实例化模型*/
    	 $m=M('case');
    	 $where=array("funcid"=>$funcid);
    	 $cases=$m->where($where)->select();
    	 /* 输出数据*/
	     $this->assign('cases',$cases);
	     $this->display();
    }

    public function add(){
        $this->display();
    }

    public function insert(){
        /* 实例化模型*/
        $m=D('case');
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }

    }

    public function mod(){
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('case');

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('case');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }


    }

    public function library(){
        /* 接收参数*/
        /* 实例化模型*/
        /* 输出数据*/


        $this->display();
    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('case');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

}