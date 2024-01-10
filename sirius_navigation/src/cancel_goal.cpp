#include <chrono>
#include <functional>
#include <memory>
#include <string>

#include <rclcpp/rclcpp.hpp>
#include "std_msgs/msg/string.hpp"
#include "rclcpp_action/rclcpp_action.hpp"
#include "nav2_msgs/action/navigate_to_pose.hpp"

using namespace std::chrono_literals;
using std::placeholders::_1;
using std::placeholders::_2;

class CancelGoal : public rclcpp::Node
{
public:
    using NavigateToPose = nav2_msgs::action::NavigateToPose;
    using GoalHandleNavigateToPose = rclcpp_action::ClientGoalHandle<NavigateToPose>;
    rclcpp_action::Client<NavigateToPose>::SharedPtr client_ptr_;

    explicit CancelGoal (): Node("cancel_goal")
    {
         this->client_ptr_  = rclcpp_action::create_client<NavigateToPose>(this, "navigate_to_pose");

    }

    void timer_callback()
    {
        RCLCPP_INFO(this->get_logger(), "TIMERCALLBACK");
        client_ptr_->async_cancel_all_goals();
    }
};
int main(int argc, char **argv)
{
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<CancelGoal>());
    rclcpp::shutdown();
    return 0;
}
