package ru.oz;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * User: Igor
 * Date: 03.09.2015
 */
@Controller
public class MainController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getMainPage(HttpServletRequest request) {
        HttpSession sessionObj = request.getSession();
        sessionObj.setAttribute("message" , "It is simple to get access to HttpSession ");

        return new ModelAndView("main");
    }

    @RequestMapping(value = "/template2", method = RequestMethod.GET)
    public ModelAndView getTemplate2Page(HttpServletRequest request) {
        HttpSession sessionObj = request.getSession();
        sessionObj.setAttribute("message2" , "YES! ");

        return new ModelAndView("template2");
    }
}
