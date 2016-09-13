<?php

class ProsysAction extends CommonAction {
    public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
    	$gp=$_SESSION['testgp'];
         /* 实例化模型*/
        $m= D("program");
        $where=array("testgp"=>"$gp");
        $pros=$m->where($where)->select();
        $this->assign("pros",$pros);

        /* 实例化模型*/
        $s = D("stage");
        $where=array("proid"=>"$proid");
        $stages=$s->where($where)->select();
        $this->assign("stages",$stages);
        $this->assign('w',$where);
        

        //获取系统关联数据
        $proid=$_GET['proid'];
        $proses= D("prosys")
        //->where(array("proid"=>"$proid"))
        ->query("SELECT a.id AS id,b.sysid AS sysno,a.sysid AS sysid,b.`name` AS sysname,
                a.proid AS proid,a.adder AS adder,a.createtime AS createtime,a.updatetime AS updatetime
                FROM tp_prosys AS a INNER JOIN tp_system AS b ON b.id = a.sysid WHERE a.proid = ? order by sysid","select",array("$proid"));
        $this->assign("proses",$proses);


	     $this->display();
    }



    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('prosys');
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
        $m=M('prosys');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $db=D('prosys');
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
        $m=M('prosys');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}