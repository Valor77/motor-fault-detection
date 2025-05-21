% Simulate Motor Sensor Data with a Simple Fault After 100 Seconds

% Time settings
t = (0:1:200)';  % Time from 0 to 200 seconds, 1-second interval

% Normal motor behavior
rpm_normal = 1500 + 10*randn(length(t),1);         % RPM ~1500 ± noise
vibration_normal = 0.02 + 0.005*randn(length(t),1); % Low vibration
temperature_normal = 45 + 2*randn(length(t),1);     % ~45°C

% Inject fault after 100s
fault_index = t > 100;

% Faulty behavior (simulate degradation)
rpm = rpm_normal;
rpm(fault_index) = rpm(fault_index) - linspace(0, 400, sum(fault_index))' + 20*randn(sum(fault_index),1);

vibration = vibration_normal;
vibration(fault_index) = vibration(fault_index) + linspace(0.01, 0.2, sum(fault_index))';

temperature = temperature_normal;
temperature(fault_index) = temperature(fault_index) + linspace(0, 15, sum(fault_index))';

% Create Table
T = table(t, rpm, vibration, temperature);
T.Properties.VariableNames = {'Time_s', 'RPM', 'Vibration_g', 'Temperature_C'};

% Export to CSV
writetable(T, 'C:\Users\pc\Documents\Data_Projects\Motor_Fault_Detection\motor_data.csv');

% Plot quick preview
figure;
subplot(3,1,1)
plot(t, rpm); title('RPM vs Time'); ylabel('RPM')
subplot(3,1,2)
plot(t, vibration); title('Vibration vs Time'); ylabel('g')
subplot(3,1,3)
plot(t, temperature); title('Temperature vs Time'); xlabel('Time (s)'); ylabel('°C')
