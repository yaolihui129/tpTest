<?php
class HcfuncAction extends CommonAction {
    /*
     * 功能库加入缓存
     */

    public function addhc(){
        /* 接收参数*/
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=D('system');
        $where=array("tp_func.id"=>$funcid);
        $arr=$m->join("tp_path ON tp_system.id = tp_path.sysid ")
        ->join('tp_func ON tp_path.id =tp_func.pathid')
        ->field("sysno,system,path,func")
        ->where($where)
        ->find();
        $arr['path']=$arr['system']."-".$arr["path"];
        $arr['funcid']=$funcid;
        $m=D('hcfunc');
        $where=array("adder"=>$_SESSION['realname']);
        $arr['sn']=$m->where($where)->count()+1;
        $arr['adder']=$_SESSION['realname'];

        dump($arr);
//         $arr=array("sn"=>$sn,"funcid"=>$funcid,"adder"=>$_SESSION['realname']);
        if(!$m->create($arr)){
            $this->error($m->getError());
        }
        $lastId=$m->add($arr);
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }


    }


    /*
     * 缓存单个加入场景功能
     */
    public function addfunc(){

        $m=D('hcfunc');
        $data=$m->field("sn,funcid,path,func,remarks,adder")->find($_GET['id']);
        $data['sceneid']=$_GET['sceneid'];
        $data['moder']=$_SESSION['realname'];
        $data['createTime']=date("Y-m-d H:i:s",time());
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

    /*
     * 缓存全部加入场景功能
     */
    public function addAllsf(){
        /* 接收参数*/
        $sceneid=$_GET['sceneid'];
        $m=D('hcfunc');
        $where=array("adder"=>$_SESSION['realname']);
        $arr=$m->where($where)->field("sn,path,funcid,func,remarks,adder")->select();

//         dump($arr);
        $m=D('hcfunc');
        foreach ($arr as $a){
            $a['sceneid']=$sceneid;
            $a['moder']=$_SESSION['realname'];
            $a['createTime']=date("Y-m-d H:i:s",time());
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
/*
 * 清空缓存
 */

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

    public function order(){

        $db = D('hcfunc');
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


/*
 * 移除单个缓存
 */
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