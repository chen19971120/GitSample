using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 訪視紀錄資料表，儲存課程的訪視紀錄及附件
/// </summary>
public partial class visitHistory
{
    /// <summary>
    /// 紀錄ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 課程資料ID，參照課程資料表
    /// </summary>
    public int? courseData_id { get; set; }

    /// <summary>
    /// 當時訪視的人員
    /// </summary>
    public string visitor { get; set; } = null!;

    /// <summary>
    /// 當時訪視的時間
    /// </summary>
    public DateTime visit_time { get; set; }

    public virtual courseData? courseData { get; set; }

    public virtual ICollection<visitContent> visitContent { get; set; } = new List<visitContent>();

    public virtual ICollection<visitFiles> visitFiles { get; set; } = new List<visitFiles>();
}
