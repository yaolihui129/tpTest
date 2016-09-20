<?php

class ScenefuncAction extends CommonAction {
    public function index(){
         /* 接收参数*/
        $proid=$_GET['proid'];
        $sceneid=$_GET['sceneid'];
       /* 实例化模型*/
        $m = D("scene");
        $where=array("proid"=>"$proid");
        $data=$m->where($where)->select();
        $this->assign("data",$data);
        
        
//         $m=D('scenefunc');
        $m=D('system');
        $where=array("tp_scenefunc.sceneid"=>$sceneid);
        $sfunc=$m
        ->join("inner JOIN tp_path ON tp_system.id = tp_path.sysid")
        ->join("inner JOIN tp_func ON tp_path.id = tp_func.pathid")
        ->join("inner JOIN tp_scenefunc ON tp_func.id = tp_scenefunc.funcid")
        ->where($where)->select();
        $this->assign("sfunc",$sfunc);
//         dump($sfunc);
        $where=array("proid"=>"$proid","sceneid"=>$sceneid);
        $this->assign("w",$where);


	     $this->display();
    }



    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('scenefunc');
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
        $m=M('scenefunc');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $db=D('scenefunc');
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
        $m=M('scenefunc');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}