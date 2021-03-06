<?php

class RiskAction extends CommonAction {
    public function index(){
         /* 接收参数*/
        $proid=$_GET['proid'];
    	$gp=$_SESSION['testgp'];
         /* 实例化模型*/
        $m= D("program");
        $where=array("testgp"=>"$gp");
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);

        /* 实例化模型*/
        $s = D("risk");
        $where=array("proid"=>"$proid");
        $risks=$s->where($where)->select();
        $this->assign("risks",$risks);
        $this->assign('w',$where);


	     $this->display();
    }

    public function add(){
       /* 接收参数*/
        $proid=$_GET['proid'];
        /* 实例化模型*/
        $m= D("risk");
        $where=array("proid"=>$proid);
        $data=$m->where($where)->select();

        $this->assign("data",$data);
        $count=$m->where($where)->count()+1;
        $this->assign('w',$where);
        $this->assign('c',$count);
        $this -> assign("state", formselect("打开","state","rstate"));
        $this -> assign("level", formselect("C","level","risklevel"));
        $this->assign("tamethod",PublicAction::editor("amethod","暂无方案"));
        $this->assign("tremaks",PublicAction::editor("remaks",""));

        $this->display();
    }

    public function insert(){
        $m=D('risk');
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
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
        $proid=$_GET['proid'];
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m= D("risk");
        $where=array("proid"=>$proid);
        $data=$m->where($where)->select();

        $this->assign("data",$data);
        $this->assign('w',$where);

        /* 实例化模型*/
        $m=M('risk');
        $risk=$m->find($id);
        $this->assign("risk",$risk);
        $this -> assign("level", formselect($risk['level'],"level","risklevel"));
        $this -> assign("state", formselect($risk['state'],"state","rstate"));
        $this->assign("tamethod",PublicAction::editor("amethod",$risk['amethod']));
        $this->assign("tremaks",PublicAction::editor("remaks",$risk['remaks']));

        $this->display();
    }

    public function update(){
        $db=D('risk');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){

        $db = D('risk');
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += $db->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("重新排序成功!");
        }else{
            $this->error("重新排序失败...");
        }
    }


    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('risk');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}