using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 學生每日連絡狀況表，紀錄每次與學員的聯絡狀況
/// </summary>
public partial class studentContactStatus
{
    /// <summary>
    /// 紀錄ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 學員ID，對應至學員資料表的ID
    /// </summary>
    public int? student_id { get; set; }

    /// <summary>
    /// 聯絡時間
    /// </summary>
    public DateTime? contact_time { get; set; }

    /// <summary>
    /// 聯絡情況
    /// </summary>
    public string? contact_status { get; set; }

    public virtual student? student { get; set; }
}
