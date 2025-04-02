using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 課程類別資料表，儲存課程類別的基本資訊，包括類別ID、編號、名稱和備註
/// </summary>
public partial class courseCategory
{
    /// <summary>
    /// 類別ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 類別編號，唯一且不可為空
    /// </summary>
    public string code { get; set; } = null!;

    /// <summary>
    /// 類別名稱，不可為空
    /// </summary>
    public string name { get; set; } = null!;

    /// <summary>
    /// 備註，這是可選欄位
    /// </summary>
    public string? note { get; set; }

    public virtual ICollection<course> course { get; set; } = new List<course>();
}
