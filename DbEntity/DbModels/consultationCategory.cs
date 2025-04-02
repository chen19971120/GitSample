using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 儲存不同諮詢類別的表格，例如法律、健康等
/// </summary>
public partial class consultationCategory
{
    /// <summary>
    /// 類別ID，唯一
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 諮詢類別名稱，例如法律諮詢、健康諮詢
    /// </summary>
    public string name { get; set; } = null!;

    public virtual ICollection<consultationQuestion> consultationQuestion { get; set; } = new List<consultationQuestion>();
}
