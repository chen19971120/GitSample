using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 單位資料表，儲存單位的基本資料
/// </summary>
public partial class unit
{
    /// <summary>
    /// 單位ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 機關ID，對應至機關資料表的ID
    /// </summary>
    public int? agency_id { get; set; }

    /// <summary>
    /// 單位名稱
    /// </summary>
    public string? name { get; set; }

    public virtual agency? agency { get; set; }

    public virtual ICollection<department> department { get; set; } = new List<department>();

    public virtual ICollection<student> student { get; set; } = new List<student>();
}
