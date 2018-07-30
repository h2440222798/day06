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
		System.out.println("��ѯ��������");
		return "index";
	}
	// {id},��·���ж�����һ������ @PathVariable("id") ��ȡ·���ж����һ������ֵ
	@RequestMapping(value = "/users/{id}" , method = RequestMethod.GET)
	public String select(@PathVariable("id") int id) {
		System.out.println("��ѯ�������� "+id);
		return "index";
	}
	@RequestMapping(value="/users/{id}",method=RequestMethod.PUT)
	public String update(@PathVariable("id") int id ,String name) {
		System.out.println("���±�ţ�" + id +"����ֵ:" + name);
		
		return "index";
	}
	@RequestMapping(value="/users/{id}",method=RequestMethod.DELETE)
	public String delete(@PathVariable("id") int id, String name) {
		System.out.println("ɾ��ָ��������ݣ�"+id +"ɾ���ˣ�"+name);
		return "index";
	}
	
}
