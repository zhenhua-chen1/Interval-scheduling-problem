%% 输入数据
function [count,this_work]=Interval_scheduling_problem(s_i,t_i)
%     请输入：
%     n=5; %任务数量;
%     s_i=[1,2,4,6,8];%任务开始时刻;
%     t_i=[3,5,7,9,10];%任务结束时刻;
%     [count,this_work]=Interval_scheduling_problem(n,s_i,t_i);

%% 处理初始数据
    space=[s_i;t_i];%组合时刻;
    space=sortrows(space',2)';%对结束时间进行排序
    spacemember.first=space(2,:);%记录第一个成员结束时间;
    spacemember.second=space(1,:);%记录第二个成员开始时间;

%% 算法开始;
    t = 0;   %存储结束时间
    count=0; %存储工作个数
    this_work=[]; %存储工作时间段
    [~,n]=size(s_i);
    for  i=1:n
        if t<spacemember.second(i) %判断是否重叠;
            count=count+1; %记录当前工作时间个数;
            t=spacemember.first(i); %每次给t赋值;
            pos=find(t==space(2,:));
            this_work=[this_work,space(:,pos)];%记录当前工作时间段;
        end
    end
end

