package data.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import data.dto.EventDTO;
import data.service.EventService;

@Controller
@RequestMapping("/event")
public class EventController {
	@Autowired
	EventService service;
	
	@GetMapping("/list")
	public ModelAndView list() {
		ModelAndView mview = new ModelAndView();
		List<EventDTO> list = service.getList();
		int total = list.size();
		String title = service.getTitle();
		
		mview.addObject("totalcount", total);
		mview.addObject("title", title);
		mview.addObject("eventList", list);
		mview.setViewName("/event/list");
		return mview;
	}
}
