using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 缺曠類別資料表，儲存缺曠的不同類別資訊
/// </summary>
public partial class absenceCategory
{
    /// <summary>
    /// 類別ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 類別名稱
    /// </summary>
    public string? name { get; set; }

    public virtual ICollection<absenceHistory> absenceHistory { get; set; } = new List<absenceHistory>();
}
