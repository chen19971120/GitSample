using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 機關資料表，儲存機關的基本資料
/// </summary>
public partial class agency
{
    /// <summary>
    /// 單位ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 機關編號
    /// </summary>
    public string? code { get; set; }

    /// <summary>
    /// 機關名稱
    /// </summary>
    public string? name { get; set; }

    /// <summary>
    /// 區域編號 (1: 北區, 2: 中區, 3: 南區, 4: 西區, 5: 東區, 6: 離島區)
    /// </summary>
    public int? area { get; set; }

    public virtual ICollection<effectTracking> effectTrackingcurrent_agency { get; set; } = new List<effectTracking>();

    public virtual ICollection<effectTracking> effectTrackingprevious_agency { get; set; } = new List<effectTracking>();

    public virtual ICollection<student> student { get; set; } = new List<student>();

    public virtual ICollection<unit> unit { get; set; } = new List<unit>();
}
