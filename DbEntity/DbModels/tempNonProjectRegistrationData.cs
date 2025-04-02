using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 非本計畫的報名資料
/// </summary>
public partial class tempNonProjectRegistrationData
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
    /// 身分證字號
    /// </summary>
    public string? id_card_number { get; set; }

    /// <summary>
    /// 手機
    /// </summary>
    public string? mobile_phone { get; set; }

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
}
