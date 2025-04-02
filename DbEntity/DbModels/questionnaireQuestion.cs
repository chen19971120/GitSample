using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 問卷問題資料表，儲存每份問卷中的問題
/// </summary>
public partial class questionnaireQuestion
{
    /// <summary>
    /// 問題ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 問卷ID，對應至問卷資料表的ID
    /// </summary>
    public int? questionnaire_id { get; set; }

    /// <summary>
    /// 問題內容
    /// </summary>
    public string? question { get; set; }

    public virtual questionnaire? questionnaire { get; set; }
}
