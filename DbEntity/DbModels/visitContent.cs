using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 訪視內容資料表，儲存每次訪視的具體內容
/// </summary>
public partial class visitContent
{
    /// <summary>
    /// 訪視內容ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 對應訪視紀錄ID，外鍵關聯
    /// </summary>
    public int? visitHistory_id { get; set; }

    /// <summary>
    /// 訪視內容
    /// </summary>
    public string? content { get; set; }

    public virtual visitHistory? visitHistory { get; set; }
}
