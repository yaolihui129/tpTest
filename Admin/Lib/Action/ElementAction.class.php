<?php

class ElementAction extends CommonAction {
    public function index(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $m=M('case');
        $dcases=$m->where($where)->select();
        $this->assign('dcases',$dcases);

        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);



	     $this->display();
    }


    public function add(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());
        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);


        $this->display();
    }

    public function insert(){
        $m=D('element');
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
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('element');
        $where=array("funcid"=>$funcid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $element=$m->find($id);
        $this->assign('element',$element);
        $this -> assign("state", formselect($element['state']));

        $where=array("prodid"=>$prodid,"proid"=>$proid,"sysid"=>$sysid,"pathid"=>$pathid,"funcid"=>$funcid);
        $this->assign('w',$where);



        $this->display();
    }

    public function update(){
        $db=D('element');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function library(){
        $this->display();
    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('element');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }


}