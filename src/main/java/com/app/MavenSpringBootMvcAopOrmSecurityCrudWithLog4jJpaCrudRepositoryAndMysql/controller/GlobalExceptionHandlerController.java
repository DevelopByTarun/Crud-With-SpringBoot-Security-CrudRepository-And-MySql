package com.app.MavenSpringBootMvcAopOrmSecurityCrudWithLog4jJpaCrudRepositoryAndMysql.controller;

import java.io.IOException;
import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalExceptionHandlerController {
	
	private Logger logger = Logger.getLogger(GlobalExceptionHandlerController.class);
	
	@ExceptionHandler(IOException.class)
	public ModelAndView myIOError(Exception ex) {
		System.out.println("=====Caught IOException=====");
		System.out.println("");
		logger.debug("=====Caught IOException=====");
		logger.debug("");
		ModelAndView model = new ModelAndView();
		model.addObject("exception", ex);
		model.setViewName("globalExceptionView");
		return model;
	}
	
	@ExceptionHandler(NullPointerException.class)
	public ModelAndView myNullPointerError(Exception ex) {
		System.out.println("=====Caught NullPointerException=====");
		System.out.println("");
		logger.debug("=====Caught NullPointerException=====");
		logger.debug("");
		ModelAndView model = new ModelAndView();
		model.addObject("exception", ex);
		model.setViewName("globalExceptionView");
		return model;
	}
}
