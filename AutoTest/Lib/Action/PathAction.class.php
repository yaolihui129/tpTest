<?php

class PathAction extends CommonAction {
    public function index(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
//         echo $sysid;
        /* 实例化模型*/
        $m=D('system');
        $where=array("prodid"=>"$prodid","state"=>"正常");
        $syses=$m->where($where)->order("sysno")->select();
        $this->assign("data",$syses);
         /* 实例化模型*/
        $m=D('path');
        $where=array("sysid"=>"$sysid");
        $pathes= $m->where($where)->order("sn")->select();
        $this->assign("pathes",$pathes);
        $where=array("prodid"=>"$prodid","proid"=>"$proid","sysid"=>"$sysid");
        $this->assign("w",$where);

	     $this->display();
    }

    public function pindex(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
//       echo $prodid;
        /* 实例化模型*/
        $m=D('prosys');
        $where=array("tp_prosys.proid"=>"$proid");
        $syses=$m
        ->join(" tp_system ON tp_system.id = tp_prosys.sysid")
        ->where($where)->order("tp_system.sysno")->select();
        $this->assign("data",$syses);
        /* 实例化模型*/
        $m=D('path');
        $where=array("sysid"=>"$sysid");
        $pathes= $m->where($where)->order("sn")->select();
        $this->assign("pathes",$pathes);
        $where=array("prodid"=>"$prodid","proid"=>"$proid","sysid"=>"$sysid");
        $this->assign("w",$where);

        $this->display();
    }




    public function add(){
        /* 接收参数*/
        $prodid=$_GET['prodid'];
        $proid=$_GET['proid'];
        $sysid=$_GET['sysid'];
        /* 实例化模型*/
        $m=D('path');
        /* 查询传递数据*/
        $where=array("sysid"=>"$sysid");
        $data= $m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $where=array("prodid"=>"$prodid","sysid"=>"$sysid");
        $this->assign("w",$where);
        $this -> assign("pstate", formselect("","pstate"));
        $where=array("prodid"=>"$prodid","proid"=>"$proid","sysid"=>"$sysid");
        $this->assign("w",$where);



        $this->display();
    }

    public function insert(){
        $m=D('path');
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
        $id=$_GET['id'];
        /* 实例化模型*/
        $m=D('path');
        $where=array("sysid"=>"$sysid");
        $data= $m->where($where)->order("sn")->select();
        $where=array("prodid"=>"$prodid","sysid"=>"$sysid");
        $this->assign("data",$data);
        $this->assign("w",$where);
        //编辑内容
        $path=$m->find($id);
        $this->assign("path",$path);
        $this -> assign("pstate", formselect($path['pstate'],"pstate"));
        $where=array("prodid"=>"$prodid","proid"=>"$proid","sysid"=>"$sysid");
        $this->assign("w",$where);



        $this->display();
    }

    public function update(){
        $db=M('path');
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=D('path');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}