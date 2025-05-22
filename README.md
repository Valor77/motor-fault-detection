🛠️ Simulated Motor Fault Detection Using MATLAB + Python


This is a two-part project:

1. Data Simulation (MATLAB)
   The `simulate_motor_data.m` script simulates sensor readings for a motor, including RPM, vibration, and temperature. A fault is introduced after 100 seconds by degrading RPM and increasing vibration and temperature.

2. Data Analysis (Python)
   The `motor_fault_analysis.ipynb` notebook loads the simulated data and performs visual analysis, fault detection using thresholds, and rolling mean smoothing.

This structure reflects a realistic industrial pipeline: hardware/system-level simulation → data logging → data-driven insight.



🚀 Project Overview

The simulation mimics a motor operating under normal conditions, with a fault injected after 100 seconds — represented by a drop in RPM and an increase in vibration and temperature.

After generating the dataset with MATLAB, we:
- Imported the data into Python
- Visualized key signals (RPM, vibration, temperature)
- Used threshold-based logic and rolling mean to flag faults

---

📊 Key Visualizations

- 📈 RPM with fault flags (RPM < 1400)
- 📉 Rolling mean overlay showing gradual degradation
- 🌡️ Vibration and temperature trend shifts during the fault zone

![RPM vs Time with Fault](your_image_or_colab_screenshot_link)


Note: The rolling mean begins to decline around 90 seconds due to the smoothing window including the early moments of fault injection at 100s. This kind of early dip can be useful in real-world systems for pre-fault warning or predictive diagnostics.

---

🧠 What I Learned

- Simulating sensor behavior in MATLAB
- Using `pandas` for time-series analysis
- Applying threshold-based logic and rolling statistics
- Structuring a project with clear documentation
- Version control and pushing to GitHub

---

🧰 Tools & Technologies

- MATLAB & Simulink (data generation)
- Python (pandas, matplotlib)
- Google Colab
- Git & GitHub

---

📁 Folder Structure
motor-fault-detection/
├── data/
│ └── motor_data.csv
├── matlab/
│ └── simulate_motor_data.m
├── notebooks/
│ └── motor_fault_analysis.ipynb
├── README.md

---

📦 How to Reproduce this Project

1. In MATLAB:
   - Open `simulate_motor_data.m`
   - Run the script to generate `motor_data.csv`
   - Confirm that the file is saved in the `/data/` folder
   - You can view my work :[MATLAB Simulation Script](./matlab/simulate_motor_data.m)

2. In Python (Colab or Jupyter):
   - Open `motor_fault_analysis.ipynb` from the `/notebooks/` folder
   - Run the notebook to visualize the fault, flag RPM drops, and plot rolling statistics
   - here is a link to my work :[Python Analysis Notebook](./notebooks/motor_fault_analysis.ipynb)

---

✅ Next Steps

- Introduce machine learning for automated fault classification
- Expand to multiple fault types
- Build a simple Streamlit dashboard to interact with the data

---

🙋‍♂️ About Me

I'm Kingsley Ohere, a control engineering graduate expanding into data analysis and AI/ML for intelligent systems. This is my first full-cycle data project, combining my engineering background with Python-based analysis.

---
 📬 Connect With Me

- 🌐 [LinkedIn](https://www.linkedin.com/in/kingsley-ohere-77codax/)
- 💻 [GitHub](https://github.com/Valor77/motor-fault-detection)
