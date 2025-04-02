using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 報名資料表，儲存報名相關資料
/// </summary>
public partial class tempRegistration
{
    /// <summary>
    /// 報名資料ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 報名日期
    /// </summary>
    public DateTime? registration_date { get; set; }

    /// <summary>
    /// 申請年度
    /// </summary>
    public string? application_year { get; set; }

    /// <summary>
    /// 補助類別
    /// </summary>
    public string? subsidy_category { get; set; }

    /// <summary>
    /// 取消日期
    /// </summary>
    public DateTime? cancel_date { get; set; }

    /// <summary>
    /// 取消原因 (請寫結論)
    /// </summary>
    public string? cancel_reason { get; set; }

    /// <summary>
    /// 其他備註 (請寫結論，如調職等特殊情形)
    /// </summary>
    public string? other_notes { get; set; }

    /// <summary>
    /// 每日連絡狀況 (如114.02.20 電話未接等)
    /// </summary>
    public string? daily_contact_status { get; set; }

    /// <summary>
    /// 機關編號
    /// </summary>
    public string? agency_code { get; set; }

    /// <summary>
    /// 學號
    /// </summary>
    public string? student_id { get; set; }

    /// <summary>
    /// 姓名
    /// </summary>
    public string? full_name { get; set; }

    /// <summary>
    /// 性別
    /// </summary>
    public string? gender { get; set; }

    /// <summary>
    /// 身分證字號
    /// </summary>
    public string? id_card_number { get; set; }

    /// <summary>
    /// 公務聯絡電話
    /// </summary>
    public string? office_phone { get; set; }

    /// <summary>
    /// 手機號碼
    /// </summary>
    public string? mobile_phone { get; set; }

    /// <summary>
    /// 公務電子郵件
    /// </summary>
    public string? office_email { get; set; }

    /// <summary>
    /// 私人電子郵件
    /// </summary>
    public string? private_email { get; set; }

    /// <summary>
    /// 機關名稱
    /// </summary>
    public string? agency_name { get; set; }

    /// <summary>
    /// 單位名稱
    /// </summary>
    public string? unit_name { get; set; }

    /// <summary>
    /// 部門
    /// </summary>
    public string? department { get; set; }

    /// <summary>
    /// 職稱
    /// </summary>
    public string? job_title { get; set; }

    /// <summary>
    /// 目前職系
    /// </summary>
    public string? current_job_series { get; set; }

    /// <summary>
    /// 機關區域
    /// </summary>
    public string? agency_region { get; set; }

    /// <summary>
    /// 課程類別
    /// </summary>
    public string? course_category { get; set; }

    /// <summary>
    /// 學分數 上限20學分
    /// </summary>
    public string? max_credits { get; set; }

    /// <summary>
    /// 學分班已修課程數 (空大114.02.18)
    /// </summary>
    public string? completed_credit_courses { get; set; }

    /// <summary>
    /// 學分班 (文化114.02.15人工智慧)
    /// </summary>
    public string? completed_course_1 { get; set; }

    /// <summary>
    /// 學分班 (文化114.02.15資通安全防護)
    /// </summary>
    public string? completed_course_2 { get; set; }

    /// <summary>
    /// 學分班已修課程數 (114.02.17含台科大)
    /// </summary>
    public string? completed_credit_courses_2 { get; set; }

    /// <summary>
    /// 學分班已修課程數 (114.03.03)
    /// </summary>
    public string? completed_credit_courses_3 { get; set; }

    /// <summary>
    /// 學分班已修學分數
    /// </summary>
    public string? completed_credits { get; set; }

    /// <summary>
    /// 學分班尚缺學分數
    /// </summary>
    public string? remaining_credits { get; set; }

    /// <summary>
    /// 資安職能訓練已修課程數
    /// </summary>
    public string? completed_security_training_courses { get; set; }

    /// <summary>
    /// 資安職能訓練已修學分數
    /// </summary>
    public string? completed_security_training_credits { get; set; }

    /// <summary>
    /// 資安職能訓練尚缺學分數
    /// </summary>
    public string? remaining_security_training_credits { get; set; }

    /// <summary>
    /// 累積總課程數
    /// </summary>
    public string? total_courses { get; set; }

    /// <summary>
    /// 累積總學分數
    /// </summary>
    public string? total_credits { get; set; }

    /// <summary>
    /// 尚缺總學分數
    /// </summary>
    public string? remaining_total_credits { get; set; }

    /// <summary>
    /// 預計總補助款
    /// </summary>
    public string? estimated_subsidy { get; set; }

    /// <summary>
    /// 學分班課程預估核銷費 (5月底前結業)(學分數x3,000元)x80%
    /// </summary>
    public string? estimated_reimbursement { get; set; }

    /// <summary>
    /// 尚未補助費用
    /// </summary>
    public string? pending_subsidy { get; set; }
}
