package com.codefolio.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codefolio.common.CommandMap;
import com.codefolio.service.BoardService;
import com.codefolio.service.ProjectService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


/*
 * FrontConroller : front 관련 Controller
 * 
 */
@Controller
public class FrontController {
	Logger log = Logger.getLogger(this.getClass());
	
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	@Resource(name="projectService")
	private ProjectService projectService;
	
	// Main 페이지
	@RequestMapping(value = "/front/Main.do")
	public ModelAndView openMainTimeline(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/front/Main");
		List<Map<String, Object>> timelines = boardService.selectTimelineList(commandMap.getMap());
		List<Map<String, Object>> timelinesOfProject = projectService.selectProjectList(commandMap.getMap());
		
		
		Map<String, Object> iter = null;
		for (int i = 0; i < timelinesOfProject.size(); i++) {
			timelines.add(timelinesOfProject.get(i));
		}
		mv.addObject("timelineJson", timelines);

		return mv;
	}

	// Blog 페이지
	@RequestMapping(value = "/front/blog.do")
	public ModelAndView openBlogList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/front/blog");
			
		List<Map<String, Object>> list = boardService.selectTopicList(commandMap.getMap());
		mv.addObject("topicList", list);
		mv.addObject("TOPIC_IDX", commandMap.get("TOPIC_IDX"));
		
		return mv;
	}
	
	//카테고리 추가 
	@RequestMapping(value="/front/insertTopic.do")
	public ModelAndView insertTopic(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/front/blog.do");
		boardService.insertTopic(commandMap.getMap());
		
		return mv;
	}

	// BlogDetail 페이지
	@RequestMapping(value = "/front/blogDetail.do")
	public ModelAndView openBlogDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/front/blogDetail");

		return mv;
	}

	// BlogUpdate 페이지
	@RequestMapping(value = "/front/blogUpdate.do")
	public ModelAndView openBlogUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/front/blogUpdate");

		return mv;
	}

	// BlogWrite 페이지
	@RequestMapping(value = "/front/blogWrite.do")
	public ModelAndView openBlogWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/front/blogWrite");

		return mv;
	}
	
	
	
	
	
}