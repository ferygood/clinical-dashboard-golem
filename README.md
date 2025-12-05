# Clinical Dashboard Golem

A dashboard demo for SDTM data following CDISC rule.


R/ folder, include app_ui, app_server
inst/ additional attached files


inst/extdata/dummy_stdm/
DM.csv
AE.csv
LB.csv
VS.csv
EX.csv


Create project module
golem::add_module(name = "disposition")


clinicalDashboard/  ← 專案根目錄
│
├── DESCRIPTION         ← package metadata（名稱、作者、依賴套件）
├── NAMESPACE           ← R package 匯出函數與模組清單
│
├── R/                  ← 所有 R 函數和 Shiny modules 放在這
│   ├── app_ui.R        ← 整個 app 的 UI 架構（tab、頁籤）
│   ├── app_server.R    ← app 的 server 端邏輯，呼叫各個 module server
│   ├── mod_disposition.R
│   ├── mod_ae.R
│   ├── mod_lab.R
│   ├── mod_vitals.R
│   ├── mod_profile.R
│   ├── mod_tfl.R
│   └── utils_data.R    ← 工具函數，例如統一讀取 CSV
│
├── inst/extdata/       ← 放外部資料，例如 CSV dummy dataset
│   └── dummy_sdtm/
│       ├── DM.csv
│       ├── AE.csv
│       ├── LB.csv
│       ├── VS.csv
│       └── EX.csv
│
├── README.md           ← 專案說明文件
└── dev/run_dev.R       ← 啟動 app 的 script，通常呼叫 golem::run_app()
