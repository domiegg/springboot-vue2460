package com.server;

import java.util.List;

import java.util.Map;

import com.entity.Zhanneixin;

public interface ZhanneixinServer {

  public int add(Zhanneixin po);

  public int update(Zhanneixin po);
  
  
  
  public int delete(int id);

  public List<Zhanneixin> getAll(Map<String,Object> map);
  public List<Zhanneixin> getsyzhanneixin1(Map<String,Object> map);
  public List<Zhanneixin> getsyzhanneixin2(Map<String,Object> map);
  public List<Zhanneixin> getsyzhanneixin3(Map<String,Object> map);
  public Zhanneixin quchongZhanneixin(Map<String, Object> acount);

  public Zhanneixin getById( int id);

  public List<Zhanneixin> getByPage(Map<String, Object> map);

  public int getCount(Map<String,Object> map);

  public List<Zhanneixin> select(Map<String, Object> map);
}
//	所有List
