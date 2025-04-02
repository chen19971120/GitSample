using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 課程資料表，儲存課程的基本資訊，包括課程ID、編號、名稱和類別ID
/// </summary>
public partial class course
{
    /// <summary>
    /// 課程ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 課程編號，唯一且不可為空
    /// </summary>
    public string code { get; set; } = null!;

    /// <summary>
    /// 課程名稱，不可為空
    /// </summary>
    public string name { get; set; } = null!;

    /// <summary>
    /// 類別ID，參照課程類別資料表的ID
    /// </summary>
    public int? category_id { get; set; }

    public virtual courseCategory? category { get; set; }

    public virtual ICollection<courseData> courseData { get; set; } = new List<courseData>();

    public virtual ICollection<creditCertification> creditCertification { get; set; } = new List<creditCertification>();
}
