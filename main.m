clc
clear 
close all
% input
s_i=[1,2,4,6,8];%the moment the task starts;
t_i=[3,5,7,9,10];%The moment the task ends；

% process
[count,this_work]=Interval_scheduling_problem(s_i,t_i);

%output
[~,n]=size(this_work);
disp(['the number of ',num2str(count),' people need to be assigned'])
for i=1:n
    disp(['The ',num2str(this_work(1,i)), ' person is assigned the ', num2str(this_work(2,i)),' task'])
end

