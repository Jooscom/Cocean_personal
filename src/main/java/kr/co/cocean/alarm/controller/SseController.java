package kr.co.cocean.alarm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import kr.co.cocean.alarm.service.SseService;

@RestController
public class SseController {

	@Autowired SseService service;

	@GetMapping(value = "/sse/subscibe/{employeeID}")
	public SseEmitter subscribe(@PathVariable int employeeID, HttpServletRequest req) {
		String ctx = req.getContextPath();
		SseService.ctx = ctx;
		long ID = employeeID;
		SseEmitter emitter = service.subscribe(ID);
		return emitter;
	}



}
