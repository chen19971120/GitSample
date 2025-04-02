using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 暫存未來開課資料表，包含開課時間及結業時間，並記錄星期幾和上課時段
/// </summary>
public partial class tempFutureCourses
{
    /// <summary>
    /// 項次，流水號主鍵
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 學校名稱
    /// </summary>
    public string? school { get; set; }

    /// <summary>
    /// 課程編號
    /// </summary>
    public string? course_code { get; set; }

    /// <summary>
    /// 課程名稱
    /// </summary>
    public string? course_name { get; set; }

    /// <summary>
    /// 學分數
    /// </summary>
    public int? credits { get; set; }

    /// <summary>
    /// 授課方式
    /// </summary>
    public string? teaching_method { get; set; }

    /// <summary>
    /// 開課日期
    /// </summary>
    public DateTime? start_date { get; set; }

    /// <summary>
    /// 結業日期
    /// </summary>
    public DateTime? end_date { get; set; }

    /// <summary>
    /// 星期幾
    /// </summary>
    public string? week_day { get; set; }

    /// <summary>
    /// 上課時段
    /// </summary>
    public string? time_slot { get; set; }
}
