%% ��������
function [count,this_work]=Interval_scheduling_problem(s_i,t_i)
%     �����룺
%     n=5; %��������;
%     s_i=[1,2,4,6,8];%����ʼʱ��;
%     t_i=[3,5,7,9,10];%�������ʱ��;
%     [count,this_work]=Interval_scheduling_problem(n,s_i,t_i);

%% �����ʼ����
    space=[s_i;t_i];%���ʱ��;
    space=sortrows(space',2)';%�Խ���ʱ���������
    spacemember.first=space(2,:);%��¼��һ����Ա����ʱ��;
    spacemember.second=space(1,:);%��¼�ڶ�����Ա��ʼʱ��;

%% �㷨��ʼ;
    t = 0;   %�洢����ʱ��
    count=0; %�洢��������
    this_work=[]; %�洢����ʱ���
    [~,n]=size(s_i);
    for  i=1:n
        if t<spacemember.second(i) %�ж��Ƿ��ص�;
            count=count+1; %��¼��ǰ����ʱ�����;
            t=spacemember.first(i); %ÿ�θ�t��ֵ;
            pos=find(t==space(2,:));
            this_work=[this_work,space(:,pos)];%��¼��ǰ����ʱ���;
        end
    end
end

