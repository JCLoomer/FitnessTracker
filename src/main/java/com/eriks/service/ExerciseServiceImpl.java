package com.eriks.service;

import com.eriks.model.Activity;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;

@Service("exerciseService")
public class ExerciseServiceImpl implements ExerciseService {

    @Override
    public List<Activity> findAllActivities() {
        List<Activity> activities = new ArrayList<Activity>();

        Activity run = new Activity();
        run.setDesc("Run");
        activities.add(run);
        Activity cycle = new Activity();
        cycle.setDesc("Cycle");
        activities.add(cycle);
        Activity swim = new Activity();
        swim.setDesc("Swim");
        activities.add(swim);
        
        return activities;
    }

}
