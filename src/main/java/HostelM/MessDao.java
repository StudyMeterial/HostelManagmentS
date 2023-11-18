package HostelM;

import java.util.ArrayList;
import java.util.List;

public class MessDao {

	private static List<MessPlan> mealPlans = new ArrayList<>();
    private static List<FeedBack> feedbackList = new ArrayList<>();

    static {
        // Initialize some sample meal plans
        mealPlans.add(new MessPlan("Monday", "Omelette", "Chicken Curry", "Pasta"));
        mealPlans.add(new MessPlan("Tuesday", "Pancakes", "Vegetarian Curry", "Pizza"));
        // Add more meal plans as needed
    }

    public static List<MessPlan> getMealPlans() {
        return mealPlans;
    }

    public static void submitFeedback(FeedBack feedback) {
        feedbackList.add(feedback);
    }
    public static List<FeedBack> getFeedbackList() {
        return feedbackList;
    }
 // Additional method to initialize meal plans (you can call this if needed)
    public static void initializeMealPlans(List<MessPlan> plans) {
        mealPlans = plans;
    }
}


