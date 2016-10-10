<?php

class ExefuncAction extends CommonAction {
    public function index(){
        /* 接收参数*/
        $stagetesterid=$_GET['stagetesterid'];
        $proid=$_GET['proid'];
        $type=$_GET['type'];
        $id=$_GET['id'];
        /* 实例化模型*/
        $m=D('exescene');
        $where=array("stagetesterid"=>$stagetesterid,"type"=>$type);
        $data=$m->where($where)->order("sn")->select();
        $this->assign('data',$data);
//         echo $id;
        $arr=$m->find($id);

        $this->assign('arr',$arr);
        /* 实例化模型*/
    	 $m=M('exefunc');
    	 $where=array("exesceneid"=>$id);
    	 $exe=$m->where($where)->order('sn')->select();
    	 $this->assign('exe',$exe);
    	 $where=array("stagetesterid"=>$stagetesterid,"exesceneid"=>$id,"proid"=>$proid,"type"=>$type);
    	 $this->assign('w',$where);

	     $this->display();
    }


    public function test(){
        /* 接收参数*/
        $stagetesterid=$_GET['stagetesterid'];
        $proid=$_GET['proid'];
        $type=$_GET['type'];
        $id=$_GET['id'];
        /* 实例化模型*/
        $m=D('exescene');
        $where=array("stagetesterid"=>$stagetesterid,"type"=>$type);
        $data=$m->where($where)->order("sn")->select();
        $this->assign('data',$data);
        /* 实例化模型*/
        $m=M('exefunc');
        $where=array("exesceneid"=>$id);
        $exe=$m->where($where)->select();
        $this->assign('exe',$exe);
         $where=array("stagetesterid"=>$stagetesterid,"exesceneid"=>$id,"proid"=>$proid,"type"=>$type);
        $this->assign('w',$where);

        $this->display();
    }

    public function pass(){

        $_GET['result']="通过";
        $_GET['moder']=$_SESSION['realname'];
        $_GET['updateTime']=date("Y-m-d H:i:s",time());

        $db=D('exefunc');
        if ($db->save($_GET)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }



    public function update(){
        /* 实例化模型*/
        $db=D('exefunc');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }


    public function supdate(){
        /* 实例化模型*/
        $db=D('exescene');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

}