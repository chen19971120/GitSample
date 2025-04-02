using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 部門資料表，儲存部門的基本資料
/// </summary>
public partial class department
{
    /// <summary>
    /// 部門ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 單位ID，對應至單位資料表的ID
    /// </summary>
    public int? unit_id { get; set; }

    /// <summary>
    /// 部門名稱
    /// </summary>
    public string? name { get; set; }

    public virtual ICollection<student> student { get; set; } = new List<student>();

    public virtual unit? unit { get; set; }
}
