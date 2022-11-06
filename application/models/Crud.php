<?php

class Crud extends CI_Model
{
    public function edit($where, $table)
    {
        return $this->db->get_where($table, $where);
    }

    public function joinGetWhere($where, $table1, $table2, $join1, $join2)
    {
        $this->db->join($table1, "$table1.$join1 = $table2.$join2");
        return $this->db->get_where($table2, $where);
    }

    public function getAll($table)
    {
        return $this->db->get($table);
    }

    public function getIds($table, $order)
    {
        return $this->db->query("SELECT * FROM $table ORDER BY $order DESC LIMIT 1");
    }

    public function getIdstore($table, $order, $id_store)
    {
        return $this->db->query("SELECT * FROM $table WHERE id_store = '$id_store' ORDER BY $order DESC LIMIT 1");
    }

    public function getIdsOrders($table, $order, $date, $store)
    {
        return $this->db->query("SELECT * FROM $table WHERE id_store = '$store' AND date LIKE '%$date%' ORDER BY $order DESC LIMIT 1");
    }

    public function insert($data, $table)
    {
        $this->db->insert($table, $data);
    }

    public function delete($where, $table)
    {
        $this->db->delete($table, $where);
    }

    public function update($where, $data, $table)
    {
        $this->db->where($where);
        $this->db->update($table, $data);
    }
}