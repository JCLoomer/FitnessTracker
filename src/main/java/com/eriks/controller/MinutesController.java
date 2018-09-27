package com.eriks.controller;

import com.eriks.model.Activity;
import com.eriks.model.Exercise;
import com.eriks.service.ExerciseService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MinutesController {
    
    @Autowired
    private ExerciseService exerciseService;
    
    @RequestMapping(value="/addMinutes")
    public String addMinutes(@ModelAttribute("exercise") Exercise exercise){
        
        System.out.println("exercise: " + exercise.getMinutes() + ". Type: " + exercise.getActivity());
        
        return "addMinutes";
    }
    
    @RequestMapping (value = "/activities", method = RequestMethod.GET)
    public @ResponseBody List<Activity> findAllActivites () {
        return exerciseService.findAllActivities();
}
    
//    @RequestMapping(value="/addMoreMinutes")
//    public String addMoreMinutes(@ModelAttribute("exercise") Exercise exercise){
//        
//        System.out.println("exercising: " + exercise.getMinutes());
//        
//        return "addMinutes";
//    }
    
}
