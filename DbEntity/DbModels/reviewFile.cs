using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 審核檔案資料表，儲存每個審核的附件檔案資料
/// </summary>
public partial class reviewFile
{
    /// <summary>
    /// 附件ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 審核ID，參照審核資料表的ID
    /// </summary>
    public int? review_id { get; set; }

    /// <summary>
    /// 檔案名稱
    /// </summary>
    public string? name { get; set; }

    /// <summary>
    /// 檔案網址
    /// </summary>
    public string? url { get; set; }

    public virtual review? review { get; set; }
}
