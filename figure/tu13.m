clear
clc
% 导入数据文件
data = load('data13.csv');
 
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
plot(x_values, y3,'black-o','MarkerIndices',1:50:length(y3),'LineWidth',1.5)
plot(x_values, y4,'green-','LineWidth',1.5);
set(gca,'XTick',0:10:50);
set(gca,'XTicklabel',{'0','10','20','30','40','50'})
set(gca,'YTick',-20:10:50);
set(gca,'YTicklabel',{'-20','-10','0','10','20','30','40','50'})
axis([0 40 -20 50])
xlabel('Time (s)'); % 设置X轴标签
ylabel('Displacement (m)'); % 设置Y轴标签
grid on; % 显示网格线
legend('Front wheel (Option 1)', 'Rear wheel (Option 1)', ...
    'Front wheel (Option 2)', 'Rear wheel (Option 2)'); % 添加解释标签
set(gca,'FontSize',10)


ax.XLabel.FontName = 'Arial';
ax.YLabel.FontName = 'Arial';

box on;
% xlabel('机器人越障运动运动时间{\itt}_3/\rms'); % 设置X轴标签
% ylabel('各轮质心竖直方向的位移{\it}/\rmmm'); % 设置Y轴标签
% grid on; % 显示网格线
% legend('施加磁力前轮质心', '施加磁力后轮质心', ...
  %   '不施加磁力前轮质心', '不施加磁力后轮质心'); % 添加解释标签
% set(gca,'FontSize',10)