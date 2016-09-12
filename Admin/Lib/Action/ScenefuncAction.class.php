<?php

class ScenefuncAction extends CommonAction {
    public function index(){
        //获取场景数据
        $proid=$_GET['proid'];
        $scenes= D("scene")
        ->where(array("proid"=>"$proid"))
        ->select();
        $this->assign("scenes",$scenes);

        //获取场景功能数据
        $sceneid=$_GET['sceneid'];
        $sfuncs= D("scenefunc")
        ->query("SELECT b.id AS id,b.funcid AS funcid,b.sn AS sn,tp_system.`name` AS sysname,c.path AS pathname,a.func AS funcname,b.author AS author,
            b.remarks AS remarks,b.sourceid AS sourceid FROM tp_scenefunc AS b INNER JOIN tp_func AS a ON a.id = b.funcid INNER JOIN tp_path AS c ON c.id = a.pathid
            INNER JOIN tp_system ON tp_system.id = c.sysid WHERE b.sceneid = $sceneid ORDER BY sn ASC","select");
        $this->assign("sfuncs",$sfuncs);


	     $this->display();
    }



    public function add(){
        $this->display();
    }

    public function insert(){
        $m=D('scenefunc');
        $id=$_GET['id'];

    }

    public function mod(){
        $m=M('scenefunc');
        $id=$_GET['id'];
        $this->display();
    }

    public function update(){
        $m=D('scenefunc');
        $id=$_GET['id'];

    }

    public function del(){
        $m=M('scenefunc');
        $id=$_GET['id'];
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('数据删除成功');
        }else{
            $this->error('数据删除失败');
        }
    }

}