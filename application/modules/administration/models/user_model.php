<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model  extends CI_Model  {

    public function get_user_lab($id_user,$only_laporan = true)
    {
        $src = $this->db->where("id_user",$id_user)
                        ->get("user_lab");

        if($src->num_rows() > 0 ){

            if($only_laporan){

                $ret = array();

                foreach ($src->result() as $key => $value) {
                    $ret[] = $value->id_laporan;
                }

                return $ret;
            }

            return $src->result();
        }

        return null;
    }
}