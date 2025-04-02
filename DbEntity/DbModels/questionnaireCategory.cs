using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 問卷類別資料表，儲存問卷的不同類別資訊
/// </summary>
public partial class questionnaireCategory
{
    /// <summary>
    /// 類別ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 類別名稱
    /// </summary>
    public string? name { get; set; }

    public virtual ICollection<questionnaire> questionnaire { get; set; } = new List<questionnaire>();
}
