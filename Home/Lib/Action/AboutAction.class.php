<?php
class AboutAction extends Action {
    public function index(){

      $this->display();
    }

    public function test(){
        $where=array("prodid"=>2);
        /* 实例化模型*/
        $m=M('program');
        $data=$m->where($where)->order("end desc")->select();
        $this->assign('data',$data);

        $this->display();
    }
}