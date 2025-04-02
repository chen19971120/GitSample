using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 職位資料表，儲存職位的基本資料
/// </summary>
public partial class jobTitle
{
    /// <summary>
    /// 職位ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 職位名稱
    /// </summary>
    public string? name { get; set; }

    public virtual ICollection<student> student { get; set; } = new List<student>();
}
