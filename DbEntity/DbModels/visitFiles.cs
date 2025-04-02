using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 訪視檔案資料表，儲存每次訪視的檔案
/// </summary>
public partial class visitFiles
{
    /// <summary>
    /// 檔案ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 對應訪視紀錄ID，外鍵關聯
    /// </summary>
    public int? visitHistory_id { get; set; }

    /// <summary>
    /// 檔案名稱或路徑
    /// </summary>
    public string? file { get; set; }

    public virtual visitHistory? visitHistory { get; set; }
}
