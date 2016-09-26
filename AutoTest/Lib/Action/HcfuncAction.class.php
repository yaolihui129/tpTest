<?php
class HcfuncAction extends CommonAction {
    
    
    public function addfunc(){
    
        $m=D('hcfunc');
        $data=$m->field("sn,funcid,remarks,adder")->find($_GET['id']);
        $data['sceneid']=$_GET['sceneid'];
        $data['moder']=$_SESSION['realname'];
        $data['updateTime']=date("Y-m-d H:i:s",time());
//         dump($data);
    
        $m=D('scenefunc');
        if(!$m->create($data)){
            $this->error($m->getError());
        }
        $lastId=$m->add($data);
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }
    }
    
    public function addAllsf(){
        /* 接收参数*/
        $sceneid=$_GET['sceneid'];
        $m=D('hcfunc');
        $where=array("adder"=>$_SESSION['realname']);
        $arr=$m->where($where)->field("sn,funcid,remarks,adder")->select();
        
//         dump($arr);
        $m=D('hcfunc');
        foreach ($arr as $a){
            $a['sceneid']=$sceneid;
            $a['moder']=$_SESSION['realname'];
            $a['updateTime']=date("Y-m-d H:i:s",time());
//           dump($a);
            $m=D('scenefunc');
            if(!$m->create($a)){
                $this->error($m->getError());
            }
            $lastId=$m->add($a);
    
        }
    
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }
        
    }
    
    
    public function delAll(){
        
        /* 实例化模型*/
        $m=M('hcfunc');
        $where=array("adder"=>$_SESSION['realname']);
        $id=$m->where($where)->field("id")->select();
//         dump($id);
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
        
        
    }
    
    
    
    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('hcfunc');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    
    
    
}