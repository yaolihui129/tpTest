<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {
    public function index(){

        $where=array("prodid"=>1);
        /* 实例化模型*/
        $m=M('program');
        $data=$m->where($where)->order("end desc")->select();
        $this->assign('data',$data);

        $this->display();
    }

    public function details(){
        /* 接收参数*/
        $testgp=$_GET['testgp'];
        $id = $_GET['id'];
        /* 实例化模型*/
        $m=D("program");
        $arr=$m->find($id);
        $this->assign('p',$arr);
        $where=array("testgp"=>$testgp,"proid"=>$id);
        $this->assign('w',$where);
        $this->assign("jianjie",PublicAction::editor("profile",$arr['profile']));
        $this->display() ;
    }

}