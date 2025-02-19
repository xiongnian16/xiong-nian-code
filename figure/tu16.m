clear
clc
% 导入数据文件
data = load('data16.csv');
 
% 提取X轴和Y轴上的数值向量
x_values = data(:, 1); % 第一列为X轴数据
y_values =data(:, 2); % 第二列为Y轴数据
y2=data(:, 3);
y3=data(:, 4);
y4=data(:, 5);

% 绘制曲线图
figure; % 创建新的图形窗口
hold on
plot(x_values, y_values,'blue','LineWidth',1.5); % 绘制曲线图
plot(x_values, y2,'red--','LineWidth',1.5); % 绘制曲线图
plot(x_values, y3,'black-o','MarkerIndices',1:7:length(y3),'LineWidth',1.5)
plot(x_values, y4,'-.','Color',[0.6,0.2,0],'LineWidth',1.5);
set(gca,'XTick',0:5:20);
set(gca,'XTicklabel',{'0','5','10','15','20'})
set(gca,'YTick',-10:20:130);
set(gca,'YTicklabel',{'-10','10','30','50','70','90','110','130'})
axis([0 20 -10 130])
xlabel('Time (s)'); % 设置X轴标签
ylabel('Displacement (mm)'); % 设置Y轴标签
grid on; % 显示网格线
legend('Left front wheel', 'Right front wheel', ...
    'Left rear wheel', 'Right rear wheel'); % 添加解释标签
set(gca,'FontSize',10)

box on;

%xlabel('机器人越障运动运动时间(s)'); % 设置X轴标签
%ylabel('各轮质心竖直方向的位移(mm)'); % 设置Y轴标签
%grid on; % 显示网格线
%legend('左前轮质心', '右前轮质心', ...
   % '左后轮质心', '右后轮质心'); % 添加解释标签
%set(gca,'FontSize',10)