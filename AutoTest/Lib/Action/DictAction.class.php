<?php

class DictAction extends CommonAction {
    public function index(){

        $where = !empty($_GET['type']) ? array("type"=>$_GET['type']) : array("type"=>"testgp");
         /* 实例化模型*/
    	 $m=M('dict');
    	 /* 查询数据*/
    	     /* 1.分类数据*/
         $tp=$m->field('type',false)->group('type')->select();
             /* 2.分类字典*/
    	 $arr=$m->field('id,k,v,type,state,moder,updatetime',false)->where($where)->order('k')->select();

    	 /* 输出数据*/
    	 $this->assign('data',$tp);
	     $this->assign('arr',$arr);
	     $this->assign('w',$where);
	     //dump($where);
	     $this->display();
    }

    public function add(){
        /* 接收参数*/
        $where = array("type"=>$_GET['type']);

        /* 实例化模型*/
        $m=M('dict');
        /* 查询数据*/
        $arr=$m->field('id,k,v,type,state,moder,updateTime',false)->where($where)->order('k')->select();
        $this->assign('data',$arr);
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect("","state"));
        $this->assign('w',$where);

        $this->display();
    }

    public function insert(){
        /* 实例化模型*/
        $m=D('dict');
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
        $where = array("type"=>$_GET['type']);
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('dict');
        /* 查询数据*/
        $arr=$m->field('id,k,v,type,state',false)->where($where)->order('k')->select();
        $dic=$m->find($id);


        /* 输出数据*/
        $this->assign('data',$arr);
        $this->assign('dic',$dic);
        $this -> assign("state", formselect($dic['state'],"state"));
        $this->assign('w',$where);

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('dict');
        $_POST['moder']=$_SESSION['realname'];
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
        $m=M('dict');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

}