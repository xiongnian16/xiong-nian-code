clear
clc
% 导入数据文件
data = load('data15b.csv');
 
% 提取X轴和Y轴上的数值向量
x_values = data(:, 3); % 第一列为X轴数据
y_values =data(:, 4); % 第二列为Y轴数据
x2=data(:, 1);
y2=data(:, 2);


% 绘制曲线图
figure; % 创建新的图形窗口
plot(x_values, y_values,'blue','LineWidth',2,'MarkerFaceColor','w'); % 绘制曲线图
hold on
plot(x_values, y2,'red-*','MarkerIndices',1:20:length(y2),'LineWidth',2); % 绘制曲线图
set(gca,'XTick',0:4:20);
set(gca,'XTicklabel',{'0','4','8','12','16','20'})
set(gca,'YTick',0:20:120);
set(gca,'YTicklabel',{'0','20','40','60','80','100','120'})
axis([0 20 0 120])
xlabel('Time (s)'); % 设置X轴标签
ylabel('Tipping amount (mm)'); % 设置Y轴标签
grid on; % 显示网格线
legend('theoretical magnetic scheme', 'magnetic optimization scheme'); % 添加解释标签
set(gca,'FontSize',12)

%xlabel('机器人越障过程运动时间{\itt}_3/\rms'); % 设置X轴标签
%ylabel('倾翻量\itz/\rmmm'); % 设置Y轴标签
%grid on; % 显示网格线
%legend('理论磁力方案下机器人的滑移量', '磁力优化方案下机器人的滑移量'); % 添加解释标签
%set(gca,'FontSize',10)