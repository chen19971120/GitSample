using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 暫存課程編號與學分費資料表
/// </summary>
public partial class tempCourseCreditFee
{
    /// <summary>
    /// 流水號主鍵
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 課程編號
    /// </summary>
    public string course_code { get; set; } = null!;

    /// <summary>
    /// 學分費
    /// </summary>
    public int? credit_fee { get; set; }
}
