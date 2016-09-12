<?php

class ProsysAction extends CommonAction {
    public function index(){
        $gp=$_SESSION['usergp'];
        //获取项目列表
        $pros= D("program")
        ->where(array("testgp"=>"$gp"))
        ->select();
        $this->assign("pros",$pros);

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
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('prosys');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=D('prosys');
        $id=$_GET['id'];

    }

    public function del(){
        $m=M('prosys');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}