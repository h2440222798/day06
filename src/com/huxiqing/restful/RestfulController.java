package com.huxiqing.restful;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RestfulController {
	@RequestMapping(value="/users",method=RequestMethod.POST)
	public String adduser(String name) {
		System.out.println("add user:" + name);
		return "index";
	}
	
	@RequestMapping(value = "/users" , method = RequestMethod.GET)
	public String selectAll() {
		System.out.println("查询所有数据");
		return "index";
	}
	// {id},在路径中定义了一个变量 @PathVariable("id") 获取路径中定义的一个变量值
	@RequestMapping(value = "/users/{id}" , method = RequestMethod.GET)
	public String select(@PathVariable("id") int id) {
		System.out.println("查询所有数据 "+id);
		return "index";
	}
	@RequestMapping(value="/users/{id}",method=RequestMethod.PUT)
	public String update(@PathVariable("id") int id ,String name) {
		System.out.println("更新编号：" + id +"更新值:" + name);
		
		return "index";
	}
	@RequestMapping(value="/users/{id}",method=RequestMethod.DELETE)
	public String delete(@PathVariable("id") int id, String name) {
		System.out.println("删除指定编号数据："+id +"删除了："+name);
		return "index";
	}
	
}
